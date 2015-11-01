package com.setnewscoop

import java.text.DateFormat
import java.text.DecimalFormat
import java.text.NumberFormat
import java.text.SimpleDateFormat

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
                    eq("i_guarantee2", memberId);
                }
            }

            List loanType = new ArrayList();
            loanType.add("E");
            loanType.add("N");
            loanType.add("S");
            loanType.add("G");
            loanType.add("T");
            loanType.add("L");
            loanType.add("H");

            println("guarantee size : "+loans.size());
            println("member details : "+member.n_first+" "+member.n_last);
            render view: "create" ,model: [member:member,loans:loans,loanType:loanType]
        }
    }

    @Transactional
    def save() {
        Member member = Member.findById(params.member);

        Loan loanInstance = new Loan();
        bindData(loanInstance,params);
        loanInstance.id = params.id;

        DateFormat df = new SimpleDateFormat("dd/MM/yyy",Locale.US);
        String dTrans = params.date_trans;
        Date d_trans = df.parse(dTrans);
        loanInstance.d_trans = d_trans;

        String dBegin = params.date_begin;
        Date d_begin = df.parse(dBegin);
        loanInstance.d_begin = d_begin;

        println(">>>id      :"+loanInstance.id);
        println(">>>d_trans :"+loanInstance.d_trans);
        println(">>>d_begin :"+loanInstance.d_begin);

        if(!loanInstance.save(flush: true ,failOnError: true)){
            render(view:  "create" ,model: [loanInstance:loanInstance,member: member])
        }

        render(view: "addLoan",model: [errCode:"1000"]);
    }

    def editLoan(){

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

        if(idMember!=-1 || idEmployee!=-1 || firstName!=null || lastName!=null) {
            def c = Member.createCriteria()
            def results = c.list {
                if (idMember != -1) {
                    eq("id", idMember)
                }
                if (idEmployee != -1) {
                    eq("i_employee", idEmployee)
                }
                if (!firstName.equals("")) {
                    eq("n_first", firstName)
                }
                if (!lastName.equals("")) {
                    eq("n_last", lastName)
                }
            }

            String errCode = "";
            int resultCount = results.size();
            println("result : " + resultCount);
            if (resultCount == 0) errCode = "1001"; //not found
            if (resultCount > 1) errCode = "1002"; //found more than 1

            if (resultCount != 1) {
                render view: "addLoan", model: [edit: "true", errCode: errCode];
            } else {
                Member member = (Member) results.get(0);
                def criteria = Loan.createCriteria();
                def loans = criteria.list {
                    eq("member", member);
                }

                println(">>>loans : " + loans.size())
                render view: "addLoan", model: [edit: "true", loans: loans];
            }
        }
        else{
            render view: "addLoan",model: [edit:"true"]
        }
    }

    def edit() {
        String loanId = params.id_loan;
        Loan loanInstance = Loan.findById(loanId);

        if(loanInstance == null){
            render view: "addLoan",model: [edit:"true",errCode: "1001"];
        }
        else {
            Member member = loanInstance.member;
            String memberId = member.id;

            def criteria = Loan.createCriteria();
            def loans = criteria.list {
                or {
                    eq("i_guarantee1", memberId);
                    eq("i_guarantee2", memberId);
                }
            }
            String type = loanId?loanId.substring(0,1):"";
            println(">>>type : "+type);

            List loanType = new ArrayList();
            loanType.add("E");
            loanType.add("N");
            loanType.add("S");
            loanType.add("G");
            loanType.add("T");
            loanType.add("L");
            loanType.add("H");

            println("guarantee size : "+loans.size());
            println("member details : "+member.n_first+" "+member.n_last);
            render view: "edit" ,model: [member:member,loans:loans,loanType:loanType,loanInstance:loanInstance,type:type]
        }
    }

    @Transactional
    def update() {
        Member member = Member.findById(params.member);

        Loan loanInstance = Loan.findById(params.id);
        bindData(loanInstance,params);

        DateFormat df = new SimpleDateFormat("dd/MM/yyy",Locale.US);
        String dTrans = params.date_trans;
        Date d_trans = df.parse(dTrans);
        loanInstance.d_trans = d_trans;

        String dBegin = params.date_begin;
        Date d_begin = df.parse(dBegin);
        loanInstance.d_begin = d_begin;

        println(">>>member :"+member.id);
        println(">>>id      :"+loanInstance.id);
        println(">>>d_trans :"+loanInstance.d_trans);
        println(">>>d_begin :"+loanInstance.d_begin);

        if(!loanInstance.save(flush: true ,failOnError: true)){
            render(view:  "edit" ,model: [loanInstance:loanInstance,member: member])
        }

        println(">>>update success");
        render(view: "addLoan",model: [edit: "true",errCode:"1000"]);
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
