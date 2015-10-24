package com.setnewscoop

import groovy.sql.Sql
import org.h2.engine.SessionFactory

import java.sql.Connection
import java.sql.DriverManager
import java.sql.ResultSet
import java.sql.ResultSetMetaData
import java.sql.Statement

class QueryPageController {

    def sessionFactory

    def index() {
        render view: "index"
    }

    def query() {
        String queryString = params.queryString;
        if (queryString) queryString.trim();
        String command = "";
        if(queryString.indexOf(" ") != -1){
            command = queryString.substring(0,queryString.indexOf(" "));
        }
        List resultData = new ArrayList();
        List columnNameList = new ArrayList();
        String errCode = "1000";
        
        if(!command.equalsIgnoreCase("Select")){
            errCode = "1002";
        }

        if(errCode.equals("1000")) {
            try {
                Connection conn = sessionFactory.currentSession.connection()
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(queryString);
                ResultSetMetaData rsmd = rs.getMetaData();

                int columnCout = rsmd.columnCount
                String name;

                for (int i = 0; i < columnCout; i++) {
                    name = rsmd.getColumnName(i + 1);
                    columnNameList.add(name);
                }

                while (rs.next()) {
                    List subList = new ArrayList();
                    for (int n = 1; n <= columnNameList.size(); n++) {
                        String data = rs.getString(n);
                        subList.add(data);
                    }
                    resultData.add(subList);
                }

                conn.close();
            }
            catch (Exception e) {
                e.printStackTrace();
                errCode = "1001";
            }
        }

        render view: "index",model: [queryString:queryString,columnNameList:columnNameList,resultData:resultData,errCode:errCode]
    }
}
