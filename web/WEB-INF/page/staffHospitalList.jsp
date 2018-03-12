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
                        <div class="col-lg-12">
                            <h1 class="left-oriented">List</h1>
                            <hr>
                        </div>

                        <div class="col-lg-12">
                            <a href="controler?/action=staffHospitaledit" class="btn btn-info btn-lg">Add New StaffHospital</a>
                        </div>

                        <div class="col-lg-12">
                            <table class="table">
                                <thead>						
                                    <tr>
                                        <th>NO</th>
                                        <th>NAMA</th>
                                        <th>ALAMAT</th>
                                        <th>TELEPHONE</th>
                                        <th width="10px">ACTION</th>
                                    </tr>							
                                </thead>

                                <tbody>
                                <%int i = 1;%>
                                <c:forEach items="${staffHospitals}" var="staffHospital">    
                                    <tr>
                                        <td>
                                            <%=i%>
                                        </td>
                                        <td>
                                            ${staffHospital.getStaffHospitalName()}
                                        </td>
                                        <td>
                                            ${staffHospital.getStaffHospitalAddress()}
                                        </td>
                                        <td>
                                            ${staffHospital.getStaffHospitalTelp()}
                                        </td>                                                    
                                        <td align="center">
                                            <a href="controler?/action=staffHospitaledit&id=${staffHospital.staffHospitalId}" class="glyphicon glyphicon-edit" title="Edit StaffHospital"></a>
                                            <a href="controler?/action=staffHospitaldelete&id=${staffHospital.staffHospitalId}" class="glyphicon glyphicon-remove" title="Delete StaffHospital"></a>
                                        </td>
                                    </tr>
                                    <%i++;%>
                                </c:forEach>
                            </tbody>

                            <tfoot>
                                <table>
                                    <tr>
                                        <td colspan="5" class="table-footer">
                                            <label style="padding-left: 5px;">Page : </label>    
                                            <%--For displaying Previous link except for the 1st page --%>
                                            <c:if test="${currentPage != 1}">
                                                <a href="controler?/action=staffHospitalList&page=${currentPage - 1}">Previous </a>
                                            </c:if>
                                            <%--For displaying Page numbers. 
                                            The when condition does not display a link for the current page--%>
                                            <c:forEach begin="1" end="${noOfPages}" var="i">
                                                <c:choose>
                                                    <c:when test="${currentPage eq i}">
                                                        ${i} 
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="controler?/action=staffHospitalList&page=${i}">${i} </a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <%--For displaying Next link --%>
                                            <c:if test="${currentPage lt noOfPages}">
                                                <a href="controler?/action=staffHospitalList&page=${currentPage + 1}"> Next</a>
                                            </c:if>
                                        </td>
                                    </tr>
                                </table>
                            </tfoot>
                        </table>


                    </div> <!--div col-->
            </div><!-- row -->


        </div><!-- container -->


        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>

