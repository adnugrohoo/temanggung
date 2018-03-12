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
                <h5>Dashboard > Komponen Darah</h5>
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
                        <a href="controler?/action=comKomponenDarahEdit" title=""><img src="assets/tfcrown/images/icons/control/16/pencil.png" alt=""><span>Add New Komponen Darah</span></a>
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
            <div class="title"><img src="assets/tfcrown/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>Komponen Darah</h6></div>                          
            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
            <thead>
            <tr>
            <th>No</th>
            <th>Komponen Darah</th>
            <th>Deskripsi</th>
            <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <%int i = 1;%>
                <c:forEach items="${comKomponenDarahs}" var="comKomponenDarah">    
            <tr class="gradeX">
            <td>
                <%=i%>
            </td>
            <td>
                ${comKomponenDarah.getComKomponenDarahName()}
            </td>
            <td>
                ${comKomponenDarah.getComKomponenDarahDesc()}
            </td>                                             
            <td align="center">
                <a href="controler?/action=comKomponenDarahEdit&id=${comKomponenDarah.comKomponenDarahId}" class="glyphicon glyphicon-edit" title="Edit Golongan Darah"><img src="assets/tfcrown/images/icons/edit.png" alt=""></a>
                <a href="controler?/action=comKomponenDarahDelete&id=${comKomponenDarah.comKomponenDarahId}" class="glyphicon glyphicon-remove" title="Delete Golongan Darah"><img src="assets/tfcrown/images/icons/remove.png" alt=""></a>
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
        <div class="wrapper></div>
    </div>

</div>

<div class="clear"></div>

</body>
</html>