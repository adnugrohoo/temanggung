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
                            <%--  <a href="controler?/action=docteredit" class="btn btn-info btn-lg">Add New Docter</a> --%>

                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add New Docter</button>
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
                                <c:forEach items="${docters}" var="docter">    
                                    <tr>
                                        <td>
                                            <%=i%>
                                        </td>
                                        <td>
                                            ${docter.getDocterName()}
                                        </td>
                                        <td>
                                            ${docter.getDocterAddress()}
                                        </td>
                                        <td>
                                            ${docter.getDocterTelp()}
                                        </td>                                                    
                                        <td align="center">
                                            <a href="controler?/action=docteredit&id=${docter.docterId}" class="glyphicon glyphicon-edit" title="Edit Docter"></a>
                                            <a href="controler?/action=docterdelete&id=${docter.docterId}" class="glyphicon glyphicon-remove" title="Delete Docter"></a>
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
                                                <a href="controler?/action=docterList&page=${currentPage - 1}">Previous </a>
                                            </c:if>
                                            <%--For displaying Page numbers. 
                                            The when condition does not display a link for the current page--%>
                                            <c:forEach begin="1" end="${noOfPages}" var="i">
                                                <c:choose>
                                                    <c:when test="${currentPage eq i}">
                                                        ${i} 
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="controler?/action=docterList&page=${i}">${i} </a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <%--For displaying Next link --%>
                                            <c:if test="${currentPage lt noOfPages}">
                                                <a href="controler?/action=docterList&page=${currentPage + 1}"> Next</a>
                                            </c:if>
                                        </td>
                                    </tr>
                                </table>
                            </tfoot>
                        </table>
                    </div> <!--div col-->
                    
                    
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Modal Header</h4>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <div class="col-lg-2">
                                                <span>Name</span>
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="inputEmail1" name="docterName" placeholder="Name" value="${docterforedit.docterName}" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-lg-2">
                                                <span>Address</span>
                                            </div>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control" id="text1" name="docterAddress" placeholder="Address" value="${docterforedit.docterAddress}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-lg-2">
                                                <span>Telephone</span>
                                            </div>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control" id="text1" name="docterTelp" placeholder="Phone" value="${docterforedit.docterTelp}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <c:if test="${docterforedit!=null}">
                                                <div class="col-lg-2">

                                                </div>
                                                <div class="col-lg-11">
                                                    <button type="submit" class="btn btn-success" formmethod="POST" formaction="controler?/action=doctersave&id=${docterforedit.docterId}" >Submit</button>
                                                    <button class="btn btn-danger" formmethod="POST"><a href="controler?/action=docterList" title="">Cancel</a></button>
                                                </div>
                                            </c:if>
                                            <c:if test="${docterforedit==null}">
                                                <div class="col-lg-2">

                                                </div>
                                                <div class="col-lg-11">
                                                    <button type="submit" class="btn btn-success" formmethod="POST" formaction="controler?/action=doctersave">Submit</button>
                                                    <button class="btn btn-danger" formmethod="POST"><a href="controler?/action=docterList" title="">Cancel</a></button>
                                                </div>
                                            </c:if>
                                        </div>
                                    </form><!-- form -->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>

            </div>
        </div>
        </div><!-- row -->


        </div><!-- container -->


        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>

