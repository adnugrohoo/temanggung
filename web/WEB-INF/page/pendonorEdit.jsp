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
                                <label>Nomor Pendonor</label>
                                <div class="formRight"><input type="text" name="pendonorNo" disabled="disabled" value="${pendonorforedit.pendonorNo}" /></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>Nama Pendonor :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="pendonorName" value="${pendonorforedit.pendonorName}" id="req"/></div><div class="clear"></div>
                        </div> 
                        <div class="formRow">
                            <label>Jenis Kelamin:<span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="pendonorGender" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:if test="${pendonorforedit.pendonorGender == 'Laki-laki' || pendonorforedit.pendonorGender == 'Perempuan'}">
                                            <option value="${pendonorforedit.pendonorGender}" selected="selected">${pendonorforedit.pendonorGender}</option>
                                        </c:if>
                                        <c:if test="${pendonorforedit.pendonorGender != 'Laki-laki' || pendonorforedit.pendonorGender != 'Perempuan'}">
                                            <option value="Laki-laki">Laki-laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                        </c:if>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>Golongan Darah : <span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="pendonorGolonganDarah" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:forEach items="${golonganDarahs}" var="golonganDarah">
                                            <c:if test="${pendonorforedit.comGolonganDarah.getComGolonganDarahId() == golonganDarah.getComGolonganDarahId()}">
                                                <option value="${golonganDarah.getComGolonganDarahId()}" selected="selected">${golonganDarah.getComGolonganDarahName()}</option>
                                            </c:if>
                                            <c:if test="${pendonorforedit.comGolonganDarah.getComGolonganDarahId() != golonganDarah.getComGolonganDarahId()}">
                                                <option value="${golonganDarah.getComGolonganDarahId()}">${golonganDarah.getComGolonganDarahName()}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>Pekerjaan:<span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="pendonorPekerjaan" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:forEach items="${pekerjaans}" var="pekerjaan">
                                            <c:if test="${pendonorforedit.comPekerjaan.getComPekerjaanId() == pekerjaan.getComPekerjaanId()}">
                                                <option value="${pekerjaan.getComPekerjaanId()}" selected="selected">${pekerjaan.getComPekerjaanName()}</option>
                                            </c:if>
                                            <c:if test="${pendonorforedit.comPekerjaan.getComPekerjaanId() != pekerjaan.getComPekerjaanId()}">
                                                <option value="${pekerjaan.getComPekerjaanId()}">${pekerjaan.getComPekerjaanName()}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>Tempat Lahir :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="pendonorBirthPlace" value="${pendonorforedit.getPendonorBirthPlace()}" id="req"/></div><div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>Tanggal Lahir<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="pendonorBirthDate" value="${pendonorforedit.getPendonorBirthDate()}" class="validate[custom[date],past[2010/01/01]]" id="maskDate"/></div><div class="clear"></div>
                        </div>                        
                        <div class="formRow">
                            <label>Alamat:<span class="req">*</span></label>
                            <div class="formRight"><textarea rows="8" cols="" name="pendonorAddress" value="${pendonorforedit.getPendonorAddress()}" class="validate[required]" id="textareaValid"></textarea></div><div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label for="labelFor">Phone:</label>
                            <div class="formRight"><input type="text" name="pendonorTelp" class="maskPhone" value="${pendonorforedit.getPendonorTelp()}" /><span class="formNote">(999) 999-9999</span></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>Password:<span class="req">*</span></label>
                            <div class="formRight"><input type="password" class="validate[required]" name="pendonorPassword" id="password1" value="${pendonorforedit.getPendonorPassword()}" /></div><div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>Email address:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" value="${pendonorforedit.getPendonorEmail()}" class="validate[required,custom[email]]" name="pendonorEmail" id="emailValid"/></div><div class="clear"></div>
                        </div>

                        <c:if test="${pendonorforedit!=null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=pendonorSave&id=${pendonorforedit.pendonorId}" value="submit" class="redB" /></div>
                            </c:if>
                            <c:if test="${pendonorforedit==null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=pendonorSave" value="submit" class="greenB" /></div>
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