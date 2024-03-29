package com.setnewscoop

class Member {

    Integer id;
    Integer i_employee;
    String n_title;
    String n_first;
    String n_last;
    Date d_birth;
    String a_address1;
    String a_address2;
    String e_tel;
    Integer f_status;
    String e_status;
    String n_company;
    String e_position;
    String e_div;
    String e_dep;
    String e_off_tel;
    Date d_member;
    Double m_share;
    Double m_tot_share;
    Integer q_time;
    Date d_expired;

    static mapping = {
        version false
        id generator:"increment", column: "i_member", sqlType: "varchar", length: 4
        i_employee column: "i_employee", sqlType: "varchar", length: 5
        n_title column: "n_title", sqlType: "varchar", length: 15
        n_first column: "n_first", sqlType: "varchar", length: 30
        n_last column: "n_last", sqlType: "varchar", length: 30
        d_birth column: "d_birth", sqlType: "datetime"
        a_address1 column: "a_address1", sqlType: "varchar", length: 50
        a_address2 column: "a_address2", sqlType: "varchar", length: 50
        e_tel column: "e_tel", sqlType: "varchar", length: 20
        f_status column: "f_status", sqlType: "tinyint", length: 4
        e_status column: "e_status", sqlType: "varchar", length: 10
        n_company column: "n_company", sqlType: "varchar", length: 3
        e_position column: "e_position", sqlType: "varchar", length: 30
        e_div column: "e_div", sqlType: "varchar", length: 30
        e_dep column: "e_dep", sqlType: "varchar", length: 30
        e_off_tel column: "e_off_tel", sqlType: "varchar", length: 4
        d_member column: "d_member", sqlType: "datetime", length: 3
        m_share column: "m_share", sqlType: "double", length: 3
        m_tot_share column: "m_tot_share", sqlType: "double", length: 3
        q_time column: "q_time", sqlType: "int", length: 11
        d_expired column: "d_expired", sqlType: "datetime", length: 3
    }

    static constraints = {
        i_employee nullable:true
        n_title nullable:true
        n_first nullable:true
        n_last nullable:true
        d_birth nullable:true
        a_address1 nullable:true
        a_address2 nullable:true
        e_tel nullable:true
        f_status nullable:true
        e_status nullable:true
        n_company nullable:true
        e_position nullable:true
        e_div nullable:true
        e_dep nullable:true
        e_off_tel nullable:true
        d_member nullable:true
        m_share nullable:true
        m_tot_share nullable:true
        q_time nullable:true
        d_expired nullable:true
    }
}
