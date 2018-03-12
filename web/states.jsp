<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
    String str = request.getParameter("queryString");
    try {
        String connectionURL = "jdbc:mysql://localhost:3306/pmitemanggung";
        Connection con;
        Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
        con = DriverManager.getConnection(connectionURL, "root", "adhi");
//Add the data into the database
        String sql = "SELECT pendonorId, pendonorName FROM pendonor WHERE pendonorName LIKE '%" + str + "%'";
        Statement stm = con.createStatement();
        stm.executeQuery(sql);
        ResultSet rs = stm.getResultSet();
        while (rs.next()) {
            out.println("<li onclick='fill(" + rs.getString("pendonorId") + ");'>" + rs.getString("pendonorName") + "</li>");
        }
    } catch (Exception e) {
        out.println("Exception is ;" + e);
    }
%>
