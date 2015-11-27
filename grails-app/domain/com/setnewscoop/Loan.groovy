package com.setnewscoop

class Loan {

    String id;
    Date d_trans;
    Date d_begin;
    Double m_loan;
    Integer q_month;
    Double m_paid_month;
    Double m_tot_return;
    String i_guarantee1;
    String i_guarantee2;
    Double m_saving;
    String e_collateral;
    String e_reason;
    String f_status;
    Date d_close;
    Boolean f_special;
    Integer q_time;
    Double m_int_close;
    Double m_repay;
    Member member;
    Double money_guarantee1;
    Double money_guarantee2;
    Double loan_saving;
    Double loan_share;


    static mapping = {
        version false
        member column: "i_member",sqlType: "varchar",length: 4
        id generator:'assigned', column: "s_trans", sqlType: "varchar",length: 6
        d_trans column: "d_trans", sqlType: "datetime"
        d_begin column: "d_begin", sqlType: "datetime"
        m_loan column: "m_loan", sqlType: "double"
        q_month column: "q_month", sqlType: "smallint",length: 6
        m_paid_month column: "m_paid_month", sqlType: "double"
        m_tot_return column: "m_tot_return", sqlType: "double"
        i_guarantee1 column: "i_guarantee1",sqlType: "varchar",length: 4
        i_guarantee2 column: "i_guarantee2", sqlType: "varchar",length: 4
        m_saving column: "m_saving", sqlType: "double"
        e_collateral column: "e_collateral", sqlType: "varchar",length: 30
        e_reason column: "e_reason", sqlType: "varchar",length: 30
        f_status column: "f_status", sqlType: "varchar",length: 1
        d_close column: "d_close", sqlType: "datetime"
        f_special column: "f_special", sqlType: "bit",length: 1
        q_time column: "q_time" , sqlType: "int",length: 11
        m_int_close column: "m_int_close", sqlType: "double"
        m_repay column: "m_repay", sqlType: "double"
        money_guarantee1 column: "money_guarantee1",sqlType: "double"
        money_guarantee2 column: "money_guarantee2",sqlType: "double"
        loan_saving column: "loan_saving",sqlType: "double"
        loan_share column: "loan_share",sqlType: "double"
    }

    static constraints = {
        id nullable : true;
        d_trans nullable : true;
        d_begin nullable : true;
        m_loan nullable : true;
        q_month nullable : true;
        m_paid_month nullable : true;
        m_tot_return nullable : true;
        i_guarantee1 nullable : true;
        i_guarantee2 nullable : true;
        m_saving nullable : true;
        e_collateral nullable : true;
        e_reason nullable : true;
        f_status nullable : true;
        d_close nullable : true;
        f_special nullable : true;
        q_time nullable : true;
        m_int_close nullable : true;
        m_repay nullable : true;
        member nullable : true;
        money_guarantee1 nullable : true;
        money_guarantee2 nullable : true;
        loan_saving nullable : true;
        loan_share nullable : true;
    }
}
