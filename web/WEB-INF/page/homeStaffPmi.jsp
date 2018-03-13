<%@page import="entity.Order"%>
<%@page import="java.util.List"%>
<%@page import="service.ConnectionMySQL"%>
<%@page import="dao.OrderDao"%>
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
                        <span></span>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>

            <div class="line"></div>

            <!-- Main content wrapper -->
            <div class="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="wrapper">
                            <div class="pageTitle">
                                <h1>Selamat Datang di PMI Temanggung</h1>
                                <br>
                                TEMANGGUNG, PMI Cabang Temanggung telah melakukan kegiatan donor darah selama tahun 2008 yang telah mencapai 8.160 orang. 
                                Dari jumlah itu terinci golongan A sebanyak 2.072 orang, golongan B sebanyak 2.329 orang, golongan O sebanyak 3.283 orang 
                                dan golongan AB 577 orang. Sementara dari jumlah itu sebanyak 101 orang mengalami kegagalan pada saat pengambilan darah.

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="../../notifikasi.jsp"></jsp:include>
        <!-- Footer line -->
        <div id="footer">

        </div>

    </div>

    <div class="clear"></div>
<script type="text/javascript">
        setTimeout(function () {
            location.reload();
        }, 1800000);
    </script>
</body>
</html>