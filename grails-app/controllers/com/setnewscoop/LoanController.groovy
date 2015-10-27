package com.setnewscoop

import java.text.DecimalFormat
import java.text.NumberFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LoanController {

    static allowedMethods = [create: "POST", save: "POST", update: "POST", delete: "POST"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Loan.list(params), model: [loanInstanceCount: Loan.count()]
    }

    def show(Loan loanInstance) {
        respond loanInstance
    }

    def addLoan(){
        render view: "addLoan"
    }

    def create() {
        int idMember = -1;
        try {
            idMember = Integer.parseInt(params.id_member);
        }
        catch (Exception e){
            e.printStackTrace();
        }

        int idEmployee = -1;
        try {
            idEmployee = Integer.parseInt(params.id_employee);
        }
        catch (Exception e){
            e.printStackTrace();
        }

        String firstName = params.first_name;
        String lastName = params.last_name;

        println("idMember : "+idMember);
        println("idEmployee : "+idEmployee);
        println("firstName : "+firstName);
        println("lastName : "+lastName);

        def c = Member.createCriteria()
        def results = c.list {
            if(idMember!=-1){
                eq("id",idMember)
            }
            if(idEmployee!=-1) {
                eq("i_employee", idEmployee)
            }
            if(!firstName.equals("")) {
                eq("n_first", firstName)
            }
            if(!lastName.equals("")) {
                eq("n_last", lastName)
            }
        }

        String errCode = "";
        int resultCount = results.size();
        println("result : "+resultCount);
        if(resultCount==0) errCode = "1001"; //not found
        if(resultCount > 1) errCode = "1002"; //found more than 1

        if(resultCount!=1){
            render view: "addLoan",model: [errCode:errCode]
        }
        else {
            Member member = (Member)results.get(0);
            DecimalFormat decimalFormat = new DecimalFormat("0000");
            String memberId = decimalFormat.format(member.id);
            println("Searching id : "+memberId);
            def criteria = Loan.createCriteria();
            def loans = criteria.list {
                or {
                    eq("i_guarantee1", memberId);
                    //eq("i_guarantee2", memberId);
                }
            }
            //memberId = 0356 มีปัญหา

            println("guarantee size : "+loans.size());
            println("member details : "+member.n_first+" "+member.n_last);
            render view: "create" ,model: [member:member,loans:loans]
        }
    }

    @Transactional
    def save(Loan loanInstance) {
        if (loanInstance == null) {
            notFound()
            return
        }

        if (loanInstance.hasErrors()) {
            respond loanInstance.errors, view: 'create'
            return
        }

        loanInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'loan.label', default: 'Loan'), loanInstance.id])
                redirect loanInstance
            }
            '*' { respond loanInstance, [status: CREATED] }
        }
    }

    def edit(Loan loanInstance) {
        respond loanInstance
    }

    @Transactional
    def update(Loan loanInstance) {
        if (loanInstance == null) {
            notFound()
            return
        }

        if (loanInstance.hasErrors()) {
            respond loanInstance.errors, view: 'edit'
            return
        }

        loanInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Loan.label', default: 'Loan'), loanInstance.id])
                redirect loanInstance
            }
            '*' { respond loanInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Loan loanInstance) {

        if (loanInstance == null) {
            notFound()
            return
        }

        loanInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Loan.label', default: 'Loan'), loanInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'loan.label', default: 'Loan'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
