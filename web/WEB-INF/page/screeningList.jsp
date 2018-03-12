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
                        <h5>Dashboard > Screening</h5>
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
                                <a href="controler?/action=screeningEdit" title=""><img src="assets/tfcrown/images/icons/control/16/pencil.png" alt=""><span>Tambah Data Screening</span></a>
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
                    <p><strong>INFORMATION: </strong>Form elements. Don't forget to check all of them!</p>
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
                <div class="title"><img src="assets/tfcrown/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Daftar Screening</h6></div>                          
                <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nomor Screening</th>
                            <th>No Kantong</th>
                            <th>Tanggal</th>
                            <th>HBsAg</th>
                            <th>Anti HIV</th>
                            <th>Anti HCV</th>
                            <th>Anti RPR</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%int i = 1;%>
                        <c:forEach items="${screenings}" var="screening">    
                            <tr class="gradeX">
                                <td>
                                    <%=i%>
                                </td>
                                <td>
                                    ${screening.getScreeningNo()}
                                </td>
                                <td>
                                    ${screening.aftap.getAftapNoKantong()}
                                </td>
                                <td>
                                    ${screening.getScreeningTanggal()}
                                </td>
                                <td>
                                    ${screening.getScreeningHbsag()}
                                </td>
                                <td>
                                    ${screening.getScreeningAntiHcv()}
                                </td>
                                <td>
                                    ${screening.getScreeningAntiHiv()}
                                </td>   
                                <td>
                                    ${screening.getScreeningAntiRpr()}
                                </td>                                            
                                <td align="center">
                                    <a href="controler?/action=screeningEdit&id=${screening.getScreeningId()}" class="glyphicon glyphicon-edit" title="Edit Screening"><img src="assets/tfcrown/images/icons/edit.png" alt=""></a>
                                    <a href="controler?/action=screeningDelete&id=${screening.getScreeningId()}" class="glyphicon glyphicon-remove" title="Delete Screening"><img src="assets/tfcrown/images/icons/remove.png" alt=""></a>
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