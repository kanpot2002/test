package com.setnewscoop


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    def springSecurityService;

    static allowedMethods = [changePassword: ["POST","GET"] ,save: "POST", update: "POST", delete: "POST"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }

        userInstance.save flush: true

        //set Role to User
        UserRole userRole = new UserRole();
        Role role = Role.get(params.userRole);
        userRole.user = userInstance;
        userRole.role = role;
        userRole.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        def role = userInstance.getAuthorities().iterator().next();
        respond userInstance,model: [role : role]
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'edit'
            return
        }

        userInstance.save flush: true

        //delete UserRole
        UserRole userRole = UserRole.findByUser(userInstance);
        userRole.delete flush: true;

        //save UserRole
        userRole = new UserRole();
        Role role = Role.get(params.userRole);
        userRole.user = userInstance;
        userRole.role = role;
        userRole.save flush: true

        if(userRole.save(flush: true)){
            userRole.errors.each {
                println it
            }
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        //delete UserRole
        UserRole userRole = UserRole.findByUser(userInstance);
        userRole.delete flush: true;

        userInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    @Transactional
    def changePassword(){
        def id = springSecurityService.currentUser.id;
        User user = User.findById(id);

        def newPassword = params.newPassword;
        def confirmPassword = params.confirmPassword;
        def errorCode = "";

        if(newPassword!=null && confirmPassword!=null) {
            if (newPassword == null) newPassword = "";
            if (confirmPassword == null) confirmPassword = "";

            //A confirm password does not equal a new password -> re-confirm
            if (!newPassword.equals(confirmPassword)) {
                errorCode = "1001";
            } else {
                user.password = newPassword;
                if(user.save(flush: true)){
                    errorCode = "0000";
                    newPassword = "";
                }
                else {
                    errorCode = "1004";
                }

            }
        }

        respond new User(),model: [errorCode:errorCode,newPassword:newPassword,confirmPassword:confirmPassword]
    }
}
