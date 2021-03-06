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
                <h5>Beranda</h5>
                <span>Silakan Gunakan Laman Ini Untuk Menambahkan Golongan Darah</span>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <div class="line"></div>
        
    <!-- Main content wrapper -->
    <div class="wrapper">
        
        <div class="nNote nInformation hideit">
            <p><strong>Informasi: </strong>Harap diperhatikan masukan golongan darah</p>
        </div>
        
        <!-- Validation form -->
        <form id="usualValidate" class="form" method="post" action="">
        	<fieldset>
                <div class="widget">
                    <div class="title"><img src="assets/tfcrown/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Masukan Golongan Darah pada Form Berikut:</h6></div>
                    <div class="formRow">
                        <label>Golongan Darah:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="required" name="comGolonganDarahName" value="${comGolonganDarahforedit.comGolonganDarahName}" id="firstname"/></div><div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label>Deskripsi:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="required" name="comGolonganDarahDesc" value="${comGolonganDarahforedit.comGolonganDarahDesc}" id="minChars"/></div><div class="clear"></div>
                    </div>
                
                    <c:if test="${comGolonganDarahforedit!=null}">
                        <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=comGolonganDarahSave&id=${comGolonganDarahforedit.comGolonganDarahId}" value="submit" class="redB" /></div>
                    </c:if>
                    <c:if test="${comGolonganDarahforedit==null}">
                        <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=comGolonganDarahSave" value="submit" class="greenB" /></div>
                    </c:if>
                    <div class="clear"></div>
                </div>
                
            </fieldset>
        </form>   
    
    </div>
    
    <!-- Footer line -->
<!--    <div id="footer">
        <div class="wrapper">As usually all rights reserved. And as usually brought to you by <a href="http://themeforest.net/user/Kopyov?ref=kopyov" title="">Eugene Kopyov</a></div>
    </div>-->

</div>

<div class="clear"></div>

</body>
</html>