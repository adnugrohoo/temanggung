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
                                <label>Nomor Komponen</label>
                                <div class="formRight"><input type="text" name="komponenNo" value="${komponenforedit.komponenNo}" /></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>Nomor Kantong :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="komponenNoKantong" value="" id="req"/></div><div class="clear"></div>
                        </div>                  

                        <div class="formRow">
                            <label>Tanggal Srceening :<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="datepicker" name="komponenTanggal" value="${komponenforedit.getKomponenTanggal()}" id="date"/></div><div class="clear"></div>
                        </div> 
                        
                        <div class="formRow">
                            <label>Komponen Darah : <span class="req">*</span></label>
                            <div class="formRight">
                                <div class="floatL">
                                    <select name="komponenDarah" id="selectReq" class="validate[required]" >
                                        <option value="">- Select one -</option>
                                        <c:forEach items="${comkomponendarahs}" var="comkomponendarah">
                                            <c:if test="${komponenforedit.comKomponenDarah.getComKomponenDarahId() == comkomponendarah.getComKomponenDarahId()}">
                                                <option value="${comkomponendarah.getComKomponenDarahId()}" selected="selected">${comkomponendarah.getComKomponenDarahName()}</option>
                                            </c:if>
                                            <c:if test="${komponenforedit.comKomponenDarah.getComKomponenDarahId() != comkomponendarah.getComKomponenDarahId()}">
                                                <option value="${comkomponendarah.getComKomponenDarahId()}">${comkomponendarah.getComKomponenDarahName()}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div><div class="clear"></div>
                            </div><div class="clear"></div>
                        </div>

                        <c:if test="${komponenforedit!=null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=komponenSave&id=${komponenforedit.komponenId}" value="submit" class="redB" /></div>
                            </c:if>
                            <c:if test="${komponenforedit==null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=komponenSave" value="submit" class="greenB" /></div>
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