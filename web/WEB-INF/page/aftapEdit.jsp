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
                        <h5>Dashboard > Tambah/Edit Aftap</h5>
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
                    <p><strong>INFORMATION: </strong>Don't forget to check all of them!</p>
                </div> 
            </c:if>
            <c:if test="${message != null}">                
                <div class="nNote nWarning hideit">
                    <p><strong>INFORMATION: </strong>${message}!</p>
                </div>
            </c:if>


            <!-- Validation form -->
            <form id="validate" class="form" method="post" action="">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="assets/tfcrown/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Form</h6></div>

                        <div class="formRow">
                            <label></label>
                            <div class="formRight"><input type="text" name="pendonorId" hidden="hidden" value="${pendonor.pendonorId}" /></div>
                            <div class="clear"></div>

                            <div class="formRow">
                                <label>Nomor Kantong</label>
                                <div class="formRight"><input type="text" name="aftapNoKantong" value="${aftapforedit.aftapNoKantong}" class="validate[required]"/></div>
                                <div class="clear"></div>
                            </div>

                            <div class="formRow">
                                <label>Tanggal Aftap :<span class="req">*</span></label>
                                <div class="formRight"><input type="text" class="datepicker" name="aftapTanggal" value="${aftapforedit.aftapTanggal}" id="date"/></div><div class="clear"></div>
                            </div> 
                            <div class="formRow">
                                <label>Status Ambil :<span class="req">*</span></label>
                                <div class="formRight">
                                    <div class="floatL">
                                        <select name="aftapStatusDonor" id="selectReq" class="validate[required]" >
                                            <option value="">- Select one -</option>
                                            <option value="Lancar">Lancar</option>
                                            <option value="Tidak Lancar">Tidak Lancar</option>
                                            <option value="Gagal">Gagal</option>
                                        </select>
                                    </div><div class="clear"></div>
                                </div><div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>Volume : <span class="req">*</span></label>
                                <div class="formRight">
                                    <div class="floatL">
                                        <select name="aftapVolumeKantong" id="selectReq" class="validate[required]" >
                                            <option value="">- Select one -</option>
                                            <c:forEach items="${volumekantongs}" var="volumekantong">
                                                <option value=${volumekantong.getComVolumeKantongId()}>${volumekantong.getComVolumeKantongName()}</option>
                                            </c:forEach>
                                        </select>
                                    </div><div class="clear"></div>
                                </div><div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>Status Donor :<span class="req">*</span></label>
                                <div class="formRight">
                                    <div class="floatL">
                                        <select name="aftapStatusAmbil" id="selectReq" class="validate[required]" >
                                            <option value="">- Select one -</option>
                                            <option value="Sukarela">Sukarela</option>
                                            <option value="Pengganti">Pengganti</option>
                                        </select>
                                    </div><div class="clear"></div>
                                </div><div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>Reaksi Pendonor :<span class="req">*</span></label>
                                <div class="formRight"><textarea rows="8" cols="" name="aftapAddress" value="${aftapforedit.getAftapReaksi()}" class="validate[required]" id="textareaValid"></textarea></div><div class="clear"></div>
                            </div>

                            <c:if test="${aftapforedit!=null}">
                                <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=aftapSave&id=${aftapforedit.aftapId}" value="submit" class="redB" /></div>
                                </c:if>
                                <c:if test="${aftapforedit==null}">
                                <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=aftapSave" value="submit" class="greenB" /></div>
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

</body>
</html>