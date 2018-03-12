<%-- 
    Document   : HospitalList
    Created on : Aug 27, 2016, 12:25:17 PM
    Author     : Adhi
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html lang="en">
<jsp:include page="_header.jsp"></jsp:include>

    <body data-spy="scroll" data-offset="0" data-target="#navbar-main">

        <jsp:include page="_menu.jsp"></jsp:include>
        
        
        <div class="container">
            <div class="row white">
                <br>
                    <h1 class="">List</h1>
                <hr>
                
                <div class="content-module" id="content-module">

                    <div id="headerLineMember" class="content-module-heading cf">
                        <h3 class="fl">Member List</h3>
                    </div>
                    <div class="content-module-main">
                        <table class="table">
                            <thead>						
                                <tr>
                                    <th>NO</th>
                                    <th>NAMA</th>
                                    <th>ALAMAT</th>
                                    <th>Telpon</th>
                                    <th>ACTION</th>
                                </tr>							
                            </thead>

                            <tbody>
                                <%int i = 1;%>
                                <c:forEach items="${hospitals}" var="hospital">    
                                    <tr>
                                        <td>
                                            <%=i%>
                                        </td>
                                        <td>
                                            ${hospital.getHospitalName()}
                                        </td>
                                        <td>
                                            ${hospital.getHospitalAlamat()}
                                        </td>
                                        <td>
                                            ${hospital.getHospitalTelp()}
                                        </td>
                                        <td>
                                            <a href="controler?/action=adminusermanedit&id=${member.memberId}" class="table-actions-button ic-table-edit" title="Edit Member"></a>
                                            <a href="controler?/action=adminusermandelete&id=${member.memberId}" class="table-actions-button ic-table-delete" title="Delete Member"></a>
                                            <a href="controler?/action=adminusermanreset&id=${member.memberId}" class="table-actions-button ic-table-refresh" title="Reset Password"></a>
                                        </td>
                                    </tr>
                                    <%i++;%>
                                </c:forEach>
                            </tbody>
                        </table>
                                
                                
                    </div> <!--div content-module-main-->
                    
                </div> <!--div content-module-->
            </div><!-- row -->
        </div><!-- container -->        
        
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>

