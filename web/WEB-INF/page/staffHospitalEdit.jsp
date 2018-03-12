<%-- 
    Document   : StaffHospitalEdit
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
                        <h1 class="left-oriented">Add or Edit Staff Hospital Form</h1>
                        <hr>

                            <div class="col-lg-12">
                                <p>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <div class="col-lg-1">
                                                <span>Name</span>
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="inputEmail1" name="staffHospitalName" placeholder="Name" value="${staffHospitalforedit.staffHospitalName}" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Address</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="staffHospitalAddress" placeholder="Address" value="${staffHospitalforedit.staffHospitalAddress}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Telephone</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="staffHospitalTelp" placeholder="Phone" value="${staffHospitalforedit.staffHospitalTelp}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <c:if test="${staffHospitalforedit!=null}">
                                            <div class="col-lg-1">

                                            </div>
                                            <div class="col-lg-11">
                                                <button type="submit" class="btn btn-success" formmethod="POST" formaction="controler?/action=staffHospitalsave&id=${staffHospitalforedit.staffHospitalId}" >Submit</button>
                                                <button class="btn btn-danger"><a href="controler?/action=staffHospitalList" title="">Cancel</a></button>
                                            </div>
                                        </c:if>
                                        <c:if test="${staffHospitalforedit==null}">
                                            <div class="col-lg-1">

                                            </div>
                                            <div class="col-lg-11">
                                                <button type="submit" class="btn btn-success" formaction="controler?/action=staffHospitalsave">Submit</button>
                                                <button class="btn btn-danger"><a href="controler?/action=staffHospitalList" title="">Cancel</a></button>
                                            </div>
                                        </c:if>
                                    </div>
                                </form><!-- form -->
                            </p>
                        </div><!-- col -->
                        </div><!-- row -->
                        </div><!-- container -->


                        <jsp:include page="_footer.jsp"></jsp:include>
                        </body>
                        </html>

