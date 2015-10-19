package com.setnewscoop

class Loan {

    String s_trans;
    Member member;
    Date d_trans;
    Date d_begin;
    double m_loan;
    int q_month;
    double m_paid_month;
    double m_tot_month;
    String i_guarantee;
    String i_guarantee2;
    double m_saving;
    String e_collateral;
    String e_reason;
    String f_status;
    Date d_close;
    boolean f_special;
    Date q_time;
    double m_int_close;
    double m_repay;

    static mapping = {
        version false
        s_trans column: "s_trans", sqlType: "varchar",length: 6
        d_trans column: "d_trans", sqlType: "datetime"
        d_begin column: "d_begin", sqlType: "datetime"
        m_loan column: "m_loan", sqlType: "double"
        q_month column: "q_month", sqlType: "smallint",length: 6
        m_paid_month column: "m_paid_month", sqlType: "double"
        m_tot_month column: "m_tot_month", sqlType: "double"
        i_guarantee column: "i_guarantee",sqlType: "varchar",length: 4
        i_guarantee2 column: "i_guarantee", sqlType: "varchar",length: 4
        m_saving column: "m_saving", sqlType: "double"
        e_collateral column: "e_collateral", sqlType: "varchar",length: 30
        e_reason column: "e_reason", sqlType: "varchar",length: 30
        f_status column: "f_status", sqlType: "varchar",length: 1
        d_close column: "d_close", sqlType: "datetime"
        f_special column: "f_special", sqlType: "bit",length: 1
        q_time column: "q_time" , sqlType: "int",length: 11
        m_int_close column: "m_int_close", sqlType: "double"
        m_repay column: "m_repay", sqlType: "double"
    }

    static constraints = {
    }
}
