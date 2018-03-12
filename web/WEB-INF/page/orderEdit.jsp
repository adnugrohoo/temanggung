<%-- 
    Document   : DocterEdit
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
                        <h1 class="left-oriented">Add or Edit Docter Form</h1>
                        <hr>

                            <div class="col-lg-12">
                                <p>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <div class="col-lg-1">
                                                <span>No Order</span>
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="inputEmail1" name="orderNo" placeholder="No Order" value="${orderforedit.orderNo}" >
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Pasien</span>
                                        </div>
                                        <div class="col-lg-4">
                                            <select name="orderPatient" id="dropdown-menu" class="form-control selcls" >
                                                <option value="">- Select one -</option>
                                                <c:forEach items="${patients}" var="patient">
                                                    <c:if test="${orderforedit.patient.getPatientId() == patient.getPatientId()}">
                                                        <option value="${patient.getPatientId()}" selected="selected">${patient.getPatientName()}</option>
                                                    </c:if>
                                                    <c:if test="${orderforedit.patient.getPatientId() != patient.getPatientId()}">
                                                        <option value="${patient.getPatientId()}">${patient.getPatientName()}</option>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Dokter</span>
                                        </div>
                                        <div class="col-lg-4">
                                            <select name="orderDocter" id="dropdown-menu" class="form-control selcls" >
                                                <option value="">- Select one -</option>
                                                <c:forEach items="${docters}" var="docter">
                                                    <c:if test="${orderforedit.docter.getDoctertId() == docter.getDocterId()}">
                                                        <option value="${docter.getDocterId()}" selected="selected">${docter.getDocterName()}</option>
                                                    </c:if>
                                                    <c:if test="${orderforedit.docter.getDocterId() != docter.getDocterId()}">
                                                        <option value="${docter.getDocterId()}">${docter.getDocterName()}</option>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Tanggal</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderTanggal" placeholder="Tanggal" value="${orderforedit.orderTanggal}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>No Kartu</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderNoKartu" placeholder="No Kartu" value="${orderforedit.orderNoKartu}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>HB</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderHb" placeholder="HB" value="${orderforedit.orderHb}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Diagnosa</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderDiagnosa" placeholder="Diagnosa" value="${orderforedit.orderDiagnosa}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Kelas</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderKelas" placeholder="Kelas" value="${orderforedit.orderKelas}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Bangsal</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderBangsal" placeholder="Bangsal" value="${orderforedit.orderBangsal}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Tanggal Masuk</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderTanggalMasuk" placeholder="Tanggal Masuk" value="${orderforedit.orderTanggalMasuk}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Tanggal digunakan</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderTanggalDigunakan" placeholder="Tanggal Digunakan" value="${orderforedit.orderTanggalDigunakan}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Jumlah permintaan</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderJmlMinta" placeholder="Jumlah Permintaan" value="${orderforedit.orderJmlMinta}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <c:if test="${orderforedit!=null}">
                                            <div class="col-lg-1">

                                            </div>
                                            <div class="col-lg-11">
                                                <button type="submit" class="btn btn-success" formmethod="POST" formaction="controler?/action=ordersave&id=${orderforedit.orderId}" >Submit</button>
                                                <button class="btn btn-danger"><a href="controler?/action=orderList" title="">Cancel</a></button>
                                            </div>
                                        </c:if>
                                        <c:if test="${orderforedit==null}">
                                            <div class="col-lg-1">

                                            </div>
                                            <div class="col-lg-11">
                                                <button type="submit" class="btn btn-success" formmethod="POST" formaction="controler?/action=ordersave">Submit</button>
                                                <button class="btn btn-danger"><a href="controler?/action=orderList" title="">Cancel</a></button>
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

