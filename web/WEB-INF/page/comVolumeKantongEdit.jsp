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
                <h5>Dashboard</h5>
                <span>Do your layouts deserve better than Lorem Ipsum.</span>
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
        <form id="usualValidate" class="form" method="post" action="">
        	<fieldset>
                <div class="widget">
                    <div class="title"><img src="assets/tfcrown/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Usual form validation</h6></div>
                    <div class="formRow">
                        <label>Volume Kantong:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="required" name="comVolumeKantongName" value="${comVolumeKantongforedit.comVolumeKantongName}" id="firstname"/></div><div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label>Deskripsi:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="required" name="comVolumeKantongDesc" value="${comVolumeKantongforedit.comVolumeKantongDesc}" id="minChars"/></div><div class="clear"></div>
                    </div>
                
                    <c:if test="${comVolumeKantongforedit!=null}">
                        <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=comVolumeKantongSave&id=${comVolumeKantongforedit.comVolumeKantongId}" value="submit" class="redB" /></div>
                    </c:if>
                    <c:if test="${comVolumeKantongforedit==null}">
                        <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=comVolumeKantongSave" value="submit" class="greenB" /></div>
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