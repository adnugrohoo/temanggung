<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>    
    <script type="text/javascript" src="assets/autocomplate/jquery.autocomplete.js"></script>  
    <script type="text/javascript" src="assets/autocomplate/jquery.autocomplete.css"></script>  
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
</header>
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
                        <h5>Dashboard > Cek Pendonor</h5>
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
                    <p><strong>INFORMATION: </strong>Form elements. Don't forget to check all of them!</p>
                </div>
            </c:if>

            <c:if test="${message == 'belumPeriksa'}">
                <div class="nNote nWarning hideit">                                
                    <p><strong>INFORMATION: </strong>${msg}</p>
                </div>
            </c:if>

            <c:if test="${message == 'sudahPeriksa'}">
                <div class="nNote nWarning hideit">                                
                    <p><strong>INFORMATION: </strong>${msg}</p>
                </div>
            </c:if>

            <c:if test="${message == 'success'}">
                <div class="nNote nSuccess hideit">                                
                    <p><strong>INFORMATION: </strong>${msg}</p>
                </div>
            </c:if>

            <c:if test="${message == 'failed'}">
                <div class="nNote nWarning hideit">                                
                    <p><strong>INFORMATION: </strong>${msg}</p>
                </div>
            </c:if>
            <!-- Validation form -->
            <form id="validate" class="form" method="post" action="">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="assets/tfcrown/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Form</h6></div>

                        <c:if test="${pendonorforcek != null}">
                            <div class="formRow">
                                <label>Nomor Pendonor</label>
                                <div class="formRight mt12">
                                    <span class="oneThree"><input type="text" id="country" name="pendonorId" value="${pendonorforcek.pendonor.pendonorNo}" disabled="disabled"></span>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>Nama Pendonor</label>
                                <div class="formRight mt12">
                                    <span class="oneThree"><input type="text" id="country" name="pendonorId" value="${pendonorforcek.pendonor.pendonorName}" disabled="disabled"></span>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>Tanggal Terakhir Donor</label>
                                <div class="formRight mt12">
                                    <span class="oneThree"><input type="text" id="country" name="pendonorId" value="${pendonorforcek.getAftapTanggal()}" disabled="disabled"></span>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <c:if test="${sModule== 'periksa'}">
                                <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=periksaEdit&pendonorId=${pendonorforcek.pendonor.pendonorId}" value="Next" id="next3" class="blueB ml10" /></div>
                                </c:if>
                                <c:if test="${sModule=='aftap'}">
                                <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=aftapEdit&pendonorId=${pendonorforcek.pendonor.pendonorId}" value="Next" id="next3" class="blueB ml10" /></div>
                                </c:if>

                        </c:if>
                        <c:if test="${pendonorforcek==null}">
                            <div class="formRow">
                                <label>Nomor Pendonor</label>
                                <div class="formRight mt12">
                                    <span class="oneThree"><input type="text" id="country" name="pendonorId" value="${pendonorforcek.pendonorId}"></span>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=pendonorCek&module=${sModule}" value="submit" class="greenB" /></div>
                            </c:if>
                        <div class="clear"></div>
                    </div>

                </fieldset>
            </form>

        </div>

        <!-- Footer line -->
        <div id="footer">
            <div class="wrapper">As usually all rights reserved. And as usually brought to you by <a href="http://themeforest.net/user/Kopyov?ref=kopyov" title="">Eugene Kopyov</a></div>
        </div>

    </div>

    <div class="clear"></div>
    <script>
        $("#country").autocomplete("getdata.jsp");
    </script>
</body>
</html>