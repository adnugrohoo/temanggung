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
                <h5>Dashboard > Jaminan</h5>
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
                    <li align="left">
                        <a href="controler?/action=comJaminanEdit" title=""><img src="assets/tfcrown/images/icons/control/16/pencil.png" alt=""><span>Add New Golongan Darah</span></a>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    
    <div class="line"></div>
    
    <!-- Main content wrapper -->
    <div class="wrapper">
        
    	<!-- Dynamic table -->
        <div class="widget">
            <div class="title"><img src="assets/tfcrown/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Dynamic table</h6></div>                          
            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
            <thead>
            <tr>
            <th>No</th>
            <th>Jaminan</th>
            <th>Deskripsi</th>
            <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <%int i = 1;%>
                <c:forEach items="${comJaminans}" var="comJaminan">    
            <tr class="gradeX">
            <td>
                <%=i%>
            </td>
            <td>
                ${comJaminan.getComJaminanName()}
            </td>
            <td>
                ${comJaminan.getComJaminanDesc()}
            </td>                                             
            <td align="center">
                <a href="controler?/action=comJaminanEdit&id=${comJaminan.comJaminanId}" class="glyphicon glyphicon-edit" title="Edit Golongan Darah"><img src="assets/tfcrown/images/icons/edit.png" alt=""></a>
                <a href="controler?/action=comJaminanDelete&id=${comJaminan.comJaminanId}" class="glyphicon glyphicon-remove" title="Delete Golongan Darah"><img src="assets/tfcrown/images/icons/remove.png" alt=""></a>
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