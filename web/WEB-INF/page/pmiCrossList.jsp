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
                        <h5>Beranda ></h5>
                        <span></span>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>

            <div class="line"></div>

            <!-- Main content wrapper -->
            <div class="wrapper">


            <c:if test="${message == null}">
                <div class="nNote nInformation hideit">                                
                    <p><strong>INFORMATION: </strong>Daftar Cross Match</p>
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
                <div class="title"><img src="assets/tfcrown/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6></h6></div>                          
                <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Pasien</th>
                            <th>Tanggal</th>
                            <th>Status Ambil</th>
                            <th>Reaksi Pendonor</th>
                            <th>Volume Kantong Darah</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%int i = 1;%>
                        <c:forEach items="${crosss}" var="cross">    
                            <tr class="gradeX">
                                <td>
                                    <%=i%>
                                </td>
                                <td>
                                    <%--${cross.getAftapPasien}--%>
                                </td>
                                <td>
                                    ${cross.getAftapTanggal()}
                                </td>
                                <td>
                                    ${cross.getAftapStatusAmbil()}
                                </td>
                                <td>
                                    ${cross.getAftapReaksi()}
                                </td>
                                <td>
                                    ${cross.comVolumeKantong.getComVolumeKantongName()}
                                </td>                                        
                                <td align="center">
                                    <a href="controler?/action=pmiCrossEdit&id=${cross.getAftapId()}" class="glyphicon glyphicon-screenshot" title="Cross Match"><img src="assets/tfcrown/images/icons/printTop.png" alt=""></a>
                                    <%--<a href="controler?/action=pmiCrossDelete&id=${cross.getOrderId()}" class="glyphicon glyphicon-remove" title="Delete Order"><img src="assets/tfcrown/images/icons/remove.png" alt=""></a>--%>
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