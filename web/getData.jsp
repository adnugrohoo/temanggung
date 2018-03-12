<%-- 
    Document   : getData
    Created on : Nov 9, 2016, 5:39:38 AM
    Author     : adhi
--%>

<%@page import="dao.PendonorDao"%>
<%@page import="service.ConnectionMySQL"%>
<%@page import="entity.Pendonor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="util.DummyDB"%>
<%

    String query = request.getParameter("q");
    
    List<Pendonor> pendonors = new ArrayList<>();

    PendonorDao pendonorDao = ConnectionMySQL.getPendonorDao();

    pendonors = pendonorDao.selectAllForAutoCompleteComboBox(query);

    Iterator<Pendonor> iterator = pendonors.iterator();
    while (iterator.hasNext()) {
        Pendonor country = (Pendonor) iterator.next();
        out.println(country);
    }
%>
