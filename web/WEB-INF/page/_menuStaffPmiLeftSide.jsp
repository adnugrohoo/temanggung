<%-- 
    Document   : _menuLeftSide
    Created on : Sep 15, 2016, 9:34:19 PM
    Author     : adhi
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
    </head>
    <body>
        <!-- Left side content -->
        <div id="leftSide">
            <div class="logo"><a href="index.html"><img src="assets/img/logo-PMI.png" alt="" /></a></div>

            <div class="sidebarSep"></div>

            <!-- General balance widget -->
            <div class="genBalance">
                <a href="#" title="" class="amount">
                    <span>Total donations : </span>
                    <span class="balanceAmount">10K Bag</span>
                </a>
                <a href="#" title="" class="amChanges">
                    <strong class="sPositive">+0.6%</strong>
                </a>
            </div>

            <div class="sidebarSep"></div>

            <!-- Left navigation -->
            <ul id="menu" class="nav">
                <li class="dash"><a href="controler?/action=homeStaffPmi" title=""><span>Dashboard</span></a></li>
                <li class="forms"><a href="#" title="" class="exp"><span>Master Data</span><strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="controler?/action=comKomponenDarahList" title="">Data Jenis Darah</a></li>
                        <li><a href="controler?/action=comGolonganDarahList" title="">Data Golongan Darah</a></li>
                        <li><a href="controler?/action=comVolumeKantongList" title="">Data Volume Kantong</a></li>
                        <li><a href="controler?/action=comJaminanList" title="">Data Jaminan</a></li>
                        <li><a href="controler?/action=comKecamatanList" title="">Data Kecamatan</a></li>
                        <li class="last"><a href="" title="">Data Pekerjaan</a></li>
                    </ul>
                </li>
                <li class="ui"><a href="controler?/action=pendonorList" title=""><span>Data Pendonor</span></a></li>
                <li class="tables"><a href="#" title="" class="exp"><span>Donor Darah</span><strong>2</strong></a>
                    <ul class="sub">
                        <li><a href="controler?/action=periksaList" title="">Pemeriksaan Pendonor</a></li>
                        <li class="last"><a href="controler?/action=aftapList" title="">Pengambilan Darah</a></li>
                    </ul>
                </li>
                <li class="widgets"><a href="#" title="" class="exp"><span>Pengolahan Darah</span><strong>3</strong></a>
                    <ul class="sub">
                        <li><a href="controler?/action=screeningList" title="">Data Screening</a></li>
                        <li><a href="controler?/action=komponenList" title="">Data Komponen</a></li>
                        <li class="last"><a href="controler?/action=pmiCrossList" title="">Data Cross Match</a></li>
                    </ul>
                </li>
                <li class="files"><a href="#" title="" class="exp"><span>Permintaan Darah</span><strong>2</strong></a>
                    <ul class="sub">
                        <li><a href="controler?/action=pmiOrderList" title="">Permintaan Darah (Reguler)</a></li>
                        <li class="last"><a href="controler?/action=komponenList" title="">Permintaan Darah (Dropping)</a></li>
                    </ul>
                </li>
                <li class="ui"><a href="ui_elements.html" title=""><span>Account</span></a></li>
            </ul>
        </div>
    </body>
</html>
