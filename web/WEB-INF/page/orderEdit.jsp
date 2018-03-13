<%-- 
    Document   : DocterEdit
    Created on : Aug 27, 2016, 12:25:17 PM
    Author     : Adhi
--%>

<%@page import="dao.OrderDao"%>
<%@page import="service.ConnectionMySQL"%>
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
                        <h1 class="left-oriented">Tambah Pesanan Baru</h1>
                        <hr>

                            <div class="col-lg-12">
                                <p>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <div class="col-lg-1">
                                                <span>No Order</span>
                                            </div>
                                            <div class="col-lg-6">
                                                <% 
                                                    OrderDao order = ConnectionMySQL.getOrderDao();
                                                    
                                                %>
                                                <c:if test="${orderforedit.getOrderNo()==null}">
                                                <input type="text" class="form-control" readonly="readonly" id="inputEmail1" name="orderNo" value="<%= order.kodeOrderOtomatis() %>" />
                                                </c:if>
                                                <c:if test="${orderforedit.getOrderNo()!=null}">
                                                <input type="text" class="form-control" readonly="readonly" id="inputEmail1" name="orderNo" value="${orderforedit.getOrderNo()}" />
                                                </c:if>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Pasien</span>
                                        </div>
                                        <div class="col-lg-4">
                                            <c:if test="${orderforedit.patient.getPatientId()!=null}">
                                                <input type="text" id="pasien" class="form-control" name="orderPatient" placeholder="Masukan Nama Pasien" value="${orderforedit.patient.getPatientId()}/${orderforedit.patient.getPatientName()}/${orderforedit.patient.getPatientNo()}"/>
                                            </c:if>
                                            <c:if test="${orderforedit.patient.getPatientId()==null}">
                                                <input type="text" id="pasien" class="form-control" name="orderPatient" placeholder="Masukan Nama Pasien"/>
                                            </c:if>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Dokter</span>
                                        </div>
                                        <div class="col-lg-4">
                                            <c:if test="${orderforedit.docter.getDocterId()!=null}">
                                                <input type="text" id="dokter" class="form-control" name="orderDocter" placeholder="Masukan Nama Dokter"value="${orderforedit.docter.getDocterId()}/${orderforedit.docter.getDocterName()}"/>
                                            </c:if>
                                            <c:if test="${orderforedit.docter.getDocterId()==null}">
                                                <input type="text" id="dokter" class="form-control" name="orderDocter" placeholder="Masukan Nama Dokter"/>
                                            </c:if>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Tanggal Order</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderTanggal" style="width: 20%" placeholder="Tanggal" value="${tanggalorder}"/>
                                            <select name="orderBulan" class="form-control" style="width: 30%">
                                                <c:if test="${bulanorder!=null}">
                                                    <option value="${bulanorder}">Sebelum update : ${bulanstringorder}</option>    
                                                </c:if>

                                                <option value="01">Januari</option>
                                                <option value="02">Februari</option>
                                                <option value="03">Maret</option>
                                                <option value="04">April</option>
                                                <option value="05">Mei</option>
                                                <option value="06">Juni</option>
                                                <option value="07">Juli</option>
                                                <option value="08">Agustus</option>
                                                <option value="09">September</option>
                                                <option value="10">Oktober</option>
                                                <option value="11">November</option>
                                                <option value="12">Desember</option>

                                            </select>
                                            <input type="text" id="text1" class="form-control" style="width: 20% " name="orderTahun" placeholder="Tahun" value="${tahunorder}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>No Kartu</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderNoKartu" placeholder="No Kartu" value="${orderforedit.getOrderNoKartu()}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>HB</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderHb" placeholder="HB" value="${orderforedit.getOrderHb()}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Diagnosa</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderDiagnosa" placeholder="Diagnosa" value="${orderforedit.getOrderDiagnosa()}">
                                        </div>
                                    </div>

                                    <!--Tugas A 2-->
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Komponen Darah</span>
                                        </div>
                                        <div class="col-lg-4">
                                            <select name="orderKomponenDarah" id="dropdown-menu" class="form-control selcls"> 
                                                <c:if test="${orderforedit.getOrderKomponenDarah().getKomponenId()!=null}">
                                                    <option value="${orderforedit.getOrderKomponenDarah().getKomponenId()}">Sebelum update : ${orderforedit.getOrderKomponenDarah().getComKomponenDarah().getComKomponenDarahName()}</option>    
                                                </c:if>
                                                <option value="3">Lekursit (LP)</option>
                                                <option value="4">Trombosit (TB)</option>
                                                <option value="2">WB</option>
                                                <option value="1">PRC</option>
                                                <option value="5">Plasma (PLS)</option>
                                                <option value="6">LC</option>
                                            </select>

                                        </div>
                                    </div>
                                    <!--Akhir Tugas A 2-->

                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Kelas</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderKelas" placeholder="Kelas" value="${orderforedit.getOrderKelas()}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Bangsal</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="text1" name="orderBangsal" placeholder="Bangsal" value="${orderforedit.getOrderBangsal()}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Tanggal Masuk</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <!--<input type="text" class="form-control" id="text1" name="orderTanggalMasuk" placeholder="format yyyy-mm-dd" value="{orderforedit.orderTanggalMasuk}">-->
                                            <input type="text" class="form-control" id="text1" name="orderTanggalMasuk" style="width: 20%" placeholder="Tanggal" value="${tanggalmasukorder}"/>
                                            <select name="orderBulanMasuk" class="form-control" style="width: 30%">
                                                <c:if test="${bulanmasukorder!=null}">
                                                    <option value="${bulanmasukorder}">Sebelum update : ${bulanmasukstringorder}</option>    
                                                </c:if>

                                                <option value="01">Januari</option>
                                                <option value="02">Februari</option>
                                                <option value="03">Maret</option>
                                                <option value="04">April</option>
                                                <option value="05">Mei</option>
                                                <option value="06">Juni</option>
                                                <option value="07">Juli</option>
                                                <option value="08">Agustus</option>
                                                <option value="09">September</option>
                                                <option value="10">Oktober</option>
                                                <option value="11">November</option>
                                                <option value="12">Desember</option>
                                            </select>
                                            <input type="text" id="text1" class="form-control" style="width: 20% " name="orderTahunMasuk" placeholder="Tahun" value="${tahunmasukorder}"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Tanggal digunakan</span>
                                        </div>
                                        <div class="col-lg-10">
                                            <!--<input type="text" class="form-control" id="text1" name="orderTanggalDigunakan" placeholder="format yyyy-mm-dd" value="{orderforedit.orderTanggalDigunakan}">-->
                                            <input type="text" class="form-control" id="text1" name="orderTanggalDigunakan" style="width: 20%" placeholder="Tanggal" value="${tanggaldigunakanorder}"/>
                                            <select name="orderBulanDigunakan" class="form-control" style="width: 30%">
                                                <c:if test="${bulandigunakanorder!=null}">
                                                    <option value="${bulandigunakanorder}">Sebelum update : ${bulandigunakanstringorder}</option>    
                                                </c:if>
                                                <option value="01">Januari</option>
                                                <option value="02">Februari</option>
                                                <option value="03">Maret</option>
                                                <option value="04">April</option>
                                                <option value="05">Mei</option>
                                                <option value="06">Juni</option>
                                                <option value="07">Juli</option>
                                                <option value="08">Agustus</option>
                                                <option value="09">September</option>
                                                <option value="10">Oktober</option>
                                                <option value="11">November</option>
                                                <option value="12">Desember</option>
                                            </select>
                                            <input type="text" id="text1" class="form-control" style="width: 20% " name="orderTahunDigunakan" placeholder="Tahun" value="${tahundigunakanorder}"/>
                                        </div>
                                    </div>

                                    <!--Tugas A 3-->
                                    <div class="form-group">
                                        <div class="col-lg-1">
                                            <span>Jumlah permintaan</span>
                                        </div>
                                        <div class="col-lg-4">
                                            <!--<input type="text" class="form-control" id="text1" name="orderJmlMinta" placeholder="Jumlah Permintaan" value="${orderforedit.orderJmlMinta}">-->
                                            <input type="button" value="+" onclick="addInput()"/>

                                            <span id="responce"></span>
                                            <script>
                                                var countBox = 1;
                                                var boxName = 0;
                                                function addInput()
                                                {
                                                    var boxName1 = "Jumlah Kantong " + countBox;
                                                    var boxName2 = "Jumlah CC " + countBox;
                                                    document.getElementById('responce').innerHTML += '<br/><input type="text" id="' + boxName1 + '" class="form-control" name="textKantong" placeholder="' + boxName1 + '" "  />&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="' + boxName2 + '" name="textCC" class="form-control" placeholder="' + boxName2 + '" "  /><br/>';

                                                    countBox += 1;
                                                }
                                            </script>
                                        </div>
                                    </div>
                                    <!--Akhir Tugas A 3-->

                                    <div class="form-group">
                                        <c:if test="${orderforedit!=null}">
                                            <div class="col-lg-1">

                                            </div>
                                            <div class="col-lg-11">
                                                <button type="submit" class="btn btn-success" formmethod="POST" formaction="controler?/action=ordersave&id=${orderforedit.orderId}" >Update</button>
                                                <a href="controler?/action=orderList" class="btn btn-danger">Batal</a>
                                            </div>
                                        </c:if>
                                        <c:if test="${orderforedit==null}">
                                            <div class="col-lg-1">

                                            </div>
                                            <div class="col-lg-11">
                                                <button type="submit" class="btn btn-success" formmethod="POST" formaction="controler?/action=ordersave">Tambah</button>
                                                <a href="controler?/action=orderList" class="btn btn-danger">Batal</a>
                                            </div>
                                        </c:if>
                                    </div>
                                </form><!-- form -->
                            </p>
                        </div><!-- col -->
                        </div><!-- row -->
                        </div><!-- container -->
                        <script>
                            $("#pasien").autocomplete("getpasien.jsp");
                        </script>

                        <script>
                            $("#dokter").autocomplete("getdokter.jsp");
                        </script>

                        <jsp:include page="_footer.jsp"></jsp:include>
                        </body>
                        </html>

