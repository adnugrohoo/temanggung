<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="_headerStaffPmi.jsp"></jsp:include>
    <body>

    <jsp:include page="_menuStaffPmiLeftSide.jsp"></jsp:include>

        <!-- Right side -->
        <div id="rightSide">
        <jsp:include page="_menuStaffPmiTopNav.jsp"></jsp:include>

        <jsp:include page="_menuStaffPmiResponsive.jsp"></jsp:include>

            <!-- Title area -->
            <div class="titleArea">
                <div class="wrapper">
                    <div class="pageTitle">
                        <h5>Beranda > Aftap</h5>
                        <span></span>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>

            <div class="line"></div>

            <!-- Page statistics and control buttons area -->
            <div class="statsRow">
                <div class="wrapper">
                    <div class="controlB">
                        <br>
                        <ul align="left">
                            <li>
                                <a href="controler?/action=pendonorCek&module=aftap" title=""><img src="assets/tfcrown/images/icons/control/16/pencil.png" alt=""><span>Tambah Data Aftap</span></a>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>

            <div class="line"></div>

            <!-- Main content wrapper -->
            <div class="wrapper">


            <c:if test="${message == null}">
                <div class="nNote nInformation hideit">                                
                    <p><strong>INFORMATION: </strong>Halaman Daftar Aftap</p>
                </div>
            </c:if>

            <c:if test="${message == 'success'}">
                <div class="nNote nSuccess hideit">                                
                    <p><strong>INFORMATION: </strong>Berhasil di${action}!</p>
                </div>
            </c:if>

            <c:if test="${message == 'failed'}">
                <div class="nNote nWarning hideit">                                
                    <p><strong>INFORMATION: </stron>Gagal di${action}!</p>
                </div>
            </c:if>

            <!-- Dynamic table -->
            <div class="widget">
                <div class="title"><img src="assets/tfcrown/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Daftar Aftap</h6></div>                          
                <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nomor Kantong</th>
                            <th>Jenis Kantong</th>
                            <th>No Pendonor</th>
                            <th>Tanggal</th>
                            <th>Status Ambil</th>
                            <th>Reaksi Pendonor</th>
                            <th>Volume Kantong Darah</th>
                            <th>Petugas Aftap</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%int i = 1;%>
                        <c:forEach items="${aftaps}" var="aftap">    
                            <tr class="gradeX">
                                <td>
                                    <%=i%>
                                </td>
                                <td>
                                    ${aftap.getAftapNoKantong()}
                                </td>
                                <td>
                                    <%--${aftap.getJenisKantong()}--%>
                                </td>
                                <td>
                                    ${aftap.pendonor.getPendonorNo()}
                                </td>
                                <td>
                                    ${aftap.getAftapTanggal()}
                                </td>
                                <td>
                                    ${aftap.getAftapStatusAmbil()}
                                </td>
                                <td>
                                    ${aftap.getAftapReaksi()}
                                </td>
                                <td>
                                    ${aftap.comVolumeKantong.getComVolumeKantongName()}
                                </td>
                                <td>
                                    <%--${aftap.getPetugasAftap()}--%>
                                </td>
                                <td align="center">
                                    <a href="controler?/action=aftapEdit&id=${aftap.getAftapId()}" class="glyphicon glyphicon-edit" title="Edit Aftap"><img src="assets/tfcrown/images/icons/edit.png" alt=""></a>
                                    <a href="controler?/action=aftapDelete&id=${aftap.getAftapId()}" class="glyphicon glyphicon-remove" title="Delete Aftap"><img src="assets/tfcrown/images/icons/remove.png" alt=""></a>
                                </td>
                            </tr>
                            <%i++;%>
                        </c:forEach>
                    </tbody>
                </table>  
            </div>

        </div>

        <!-- Footer line -->
        <div id="footer">
            <div class="wrapper">As usually all rights reserved. And as usually brought to you by <a href="http://themeforest.net/user/Kopyov?ref=kopyov" title="">Eugene Kopyov</a></div>
        </div>

    </div>

    <div class="clear"></div>

</body>
</html>