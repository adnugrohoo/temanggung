<%-- 
    Document   : list
    Created on : Sep 23, 2016, 5:58:18 PM
    Author     : adhi
--%>

<%@page import="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
    try {
        String s[] = null;

        MysqlDataSource dataSource = new MysqlDataSource();
        /**
         * THIS IS CONECCTION CONFIGURATION, PLEASE FIX WITH YOUR DB SETTING
         *
         */
        dataSource.setUrl("jdbc:mysql://localhost:3306/pmitemanggung");
        dataSource.setUser("root");
        dataSource.setPassword("adhi");

        Connection con = dataSource.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from pendonor");

        List li = new ArrayList();

        while (rs.next()) {
            li.add(rs.getString(1));
            li.add(rs.getString(2));
            li.add(rs.getString(3));
        }

        String[] str = new String[li.size()];
        Iterator it = li.iterator();

        int i = 0;
        while (it.hasNext()) {
            String p = (String) it.next();
            str[i] = p;
            i++;
        }

        //jQuery related start
        String query = (String) request.getParameter("q");

        int cnt = 1;
        for (int j = 0; j < str.length; j++) {
            if (str[j].toUpperCase().startsWith(query.toUpperCase())) {
                out.print(str[j] + "\n");
                if (cnt >= 5)// 5=How many results have to show while we are typing(auto suggestions)
                {
                    break;
                }
                cnt++;
            }
        }
        //jQuery related end

        rs.close();
        st.close();
        con.close();

    } catch (Exception e) {
        e.printStackTrace();
    }

//www.java4s.com
%>
