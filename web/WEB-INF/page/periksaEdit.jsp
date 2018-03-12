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
                        <h5>Dashboard > Tambah/Edit Periksa</h5>
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

                            <div class="formRight"><input type="text" name="pendonorId" hidden="hidden" value="${pendonor.pendonorId}" /></div>
                            <div class="clear"></div>
                            
                            <div class="formRow">
                                <label>Nomor Periksa</label>
                                <div class="formRight"><input type="text" name="periksaNo" disabled="disabled" value="" /></div>
                            <div class="clear"></div>
                        </div>                            
                        <div class="formRow">
                            <label>Tanggal Periksa<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="periksaTanggal" value="${periksaforedit.getPeriksaTanggal()}" class="validate[custom[date],past[2050/01/01]]" id="maskDate"/></div><div class="clear"></div>
                        </div> 

                        <div class="formRow">
                            <label>Tensi :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="periksaTensi" value="${periksaforedit.periksaTensi}" id="req"/></div><div class="clear"></div>
                        </div> 
                        <div class="formRow">
                            <label>Suhu :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="periksaSuhu" value="${periksaforedit.getPeriksaSuhu()}" id="req"/></div><div class="clear"></div>
                        </div>                       
                        <div class="formRow">
                            <label>Berat Badan :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="periksaBeratBadan" value="${periksaforedit.getPeriksaBeratBadan()}" id="req"/></div><div class="clear"></div>
                        </div>                       
                        <div class="formRow">
                            <label>Riwayat medis :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="periksaRiwayatMedis" value="${periksaforedit.getPeriksaRiwayatMedis()}" id="req"/></div><div class="clear"></div>
                        </div>                       
                        <div class="formRow">
                            <label>Keputusan:<span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="periksaKeputusan" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:if test="${periksaforedit.periksaKeputusan == 'Lolos' || periksaforedit.periksaKeputusan == 'Tidak Lolos'}">
                                            <option value="${periksaforedit.periksaKeputusan}" selected="selected">${periksaforedit.periksaKeputusan}</option>
                                        </c:if>
                                        <c:if test="${periksaforedit.periksaKeputusan != 'Lolos' || periksaforedit.periksaKeputusan != 'Tidak Lolos'}">
                                        <option value="Lolos">Lolos</option>
                                        <option value="Tidak Lolos">Tidak Lolos</option>
                                        </c:if>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>Alasan:<span class="req">*</span></label>
                            <div class="formRight"><textarea rows="8" cols="" name="periksaAlasan" value="${periksaforedit.getPeriksaAlasan()}" class="validate[required]" id="textareaValid"></textarea></div>
                            <div class="clear"></div>
                        </div>

                        <c:if test="${periksaforedit!=null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=periksaSave&id=${periksaforedit.periksaId}" value="submit" class="redB" /></div>
                            </c:if>
                            <c:if test="${periksaforedit==null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=periksaSave" value="submit" class="greenB" /></div>
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