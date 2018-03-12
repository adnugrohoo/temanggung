<%-- 
    Document   : HospitalList
    Created on : Aug 27, 2016, 12:25:17 PM
    Author     : Adhi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">    
<jsp:include page="_header.jsp"></jsp:include>

    <body data-spy="scroll" data-offset="0" data-target="#navbar-main">

        <jsp:include page="_menu.jsp"></jsp:include>
        
        
        <div class="container" id="about" name="about">
            <div class="row white">
                <br>
                <h1 class="centered">Welcome</h1>
                <hr>
            </div><!-- row -->
        </div><!-- container -->
        
        
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
