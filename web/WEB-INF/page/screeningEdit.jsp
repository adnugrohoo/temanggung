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
                        <h5>Dashboard > Tambah/Edit Pendonor</h5>
                        <span></span>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>

            <div class="line"></div>

            <!-- Main content wrapper -->
            <div class="wrapper">

                <div class="nNote nInformation hideit">
                    <p><strong>INFORMATION: </strong>Form elements were divided into 4 different pages. Don't forget to check all of them!</p>
                </div> 

                <!-- Validation form -->
                <form id="validate" class="form" method="post" action="">
                    <fieldset>
                        <div class="widget">
                            <div class="title"><img src="assets/tfcrown/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Form</h6></div>

                            <div class="formRow">
                                <label>Nomor Screening</label>
                                <div class="formRight"><input type="text" name="screeningNo" value="${screeningforedit.screeningNo}" /></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>Nomor Kantong :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="screeningNoKantong" value="" id="req"/></div><div class="clear"></div>
                        </div>                  

                        <div class="formRow">
                            <label>Tanggal Srceening :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="datepicker" name="screeningTanggal" value="${screeningforedit.getScreeningTanggal()}" id="date"/></div><div class="clear"></div>
                        </div> 

                        <div class="formRow">
                            <label>HBsAg:<span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="screeningHbsag" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:if test="${screeningforedit.screeningHbsag == 'Positive' || screeningforedit.screeningHbsag == 'Negative'}">
                                            <option value="${screeningforedit.screeningHbsag}" selected="selected">${screeningforedit.screeningHbsag}</option>
                                        </c:if>
                                        <c:if test="${screeningforedit.screeningHbsag != 'Positive' || screeningforedit.screeningHbsag != 'Negative'}">
                                            <option value="Positive">Positive</option>
                                            <option value="Negative">Negative</option>
                                        </c:if>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>Anti HIV:<span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="screeningAntiHiv" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:if test="${screeningforedit.screeningAnti == 'Positive' || screeningforedit.screeningAntiHiv == 'Negative'}">
                                            <option value="${screeningforedit.screeningAntiHiv}" selected="selected">${screeningforedit.screeningAntiHiv}</option>
                                        </c:if>
                                        <c:if test="${screeningforedit.screeningAntiHiv != 'Positive' || screeningforedit.screeningAntiHiv != 'Negative'}">
                                            <option value="Positive">Positive</option>
                                            <option value="Negative">Negative</option>
                                        </c:if>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>Anti HCV :<span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="screeningAntiHcv" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:if test="${screeningforedit.screeningAntiHcv == 'Positive' || screeningforedit.screeningAntiHcv == 'Negative'}">
                                            <option value="${screeningforedit.screeningAntiHcv}" selected="selected">${screeningforedit.screeningAntiHcv}</option>
                                        </c:if>
                                        <c:if test="${screeningforedit.screeningAntiHcv != 'Positive' || screeningforedit.screeningAntiHcv != 'Negative'}">
                                            <option value="Positive">Positive</option>
                                            <option value="Negative">Negative</option>
                                        </c:if>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>Anti RPR:<span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="screeningAntiRpr" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:if test="${screeningforedit.screeningAntiRpr == 'Positive' || screeningforedit.screeningAntiRpr == 'Negative'}">
                                            <option value="${screeningforedit.screeningAntiRpr}" selected="selected">${screeningforedit.screeningAntiRpr}</option>
                                        </c:if>
                                        <c:if test="${screeningforedit.screeningAntiRpr != 'Positive' || screeningforedit.screeningAntiRpr != 'Negative'}">
                                            <option value="Positive">Positive</option>
                                            <option value="Negative">Negative</option>
                                        </c:if>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>

                        <c:if test="${screeningforedit!=null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=screeningSave&id=${screeningforedit.screeningId}" value="submit" class="redB" /></div>
                            </c:if>
                            <c:if test="${screeningforedit==null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=screeningSave" value="submit" class="greenB" /></div>
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