<%-- 
    Created on : May 21, 2014, 9:54:52 AM
    Author     : Anonymous
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
        <jsp:include page="_header.jsp"></jsp:include>

    <body data-spy="scroll" data-offset="0" data-target="#navbar-main">

        <jsp:include page="_menu.jsp"></jsp:include>

        <!-- ==== HEADERWRAP ==== -->
        <div id="headerwrap" id="home" name="home">
            <header class="clearfix">
                <h1><span class="icon icon-shield"></span></h1>
                <p style="color: red">Setetes Darah Sehat Anda</p>
                <p style="color: red">Selamatkan jiwa penderita.</p>
                <h1 style="text-align: center; vertical-align: central; font-size: 20px; padding-top: 250px;">${msg}</h1>
            </header>	    
        </div><!-- /headerwrap -->
      
        <!-- ==== GREYWRAP ==== -->
        <div id="greywrap">
            <div class="container">
                <div class="col-lg-4 callout">
                    <span class="icon icon-stack"></span>
                    <h2>Stok Darah </h2>
                    <p>Untuk mengetahui informasi stok darah PMI Kabupaten Temanggung secara lengkap (WB, PRC, TC, FFP) dan terupdate setiap harinya. </p>
                </div><!-- col-lg-4 -->

                <div class="col-lg-4 callout">
                    <span class="icon icon-eye"></span>
                    <h2>Jadwal Donor Darah </h2>
                    <p>Informasi kegiatan donor darah (mobile unit) yang diadakan oleh PMI dengan Instansi yang ada di Kabupaten Temanggung & sekitarnya. </p>
                </div><!-- col-lg-4 -->	

                <div class="col-lg-4 callout">
                    <span class="icon icon-heart"></span>
                    <h2>Ambulance Service </h2>
                    <p>Pelayanan ambulans gawat darurat 24 Jam dan pelayanan ambulans transport.   </p>
                </div><!-- col-lg-4 -->	
            </div><!-- row -->
        </div><!-- greywrap -->

        <!-- ==== ABOUT ==== -->
        <div class="container" id="about" name="about">
            <div class="row white">
                <br>
                <h1 class="centered">PMI Kabupaten Temanggung</h1>
                <hr>

                <div class="col-lg-6">
                    <p>PMI Cabang Temanggung telah melakukan kegiatan donor darah selama tahun 2008 yang telah mencapai 8.160 orang. Dari jumlah itu terinci golongan A sebanyak 2.072 orang, golongan B sebanyak 2.329 orang, golongan O sebanyak 3.283 orang dan golongan AB 577 orang. Sementara dari jumlah itu sebanyak 101 orang mengalami kegagalan pada saat pengambilan darah.
Demikian dilaporkan oleh ketua PMI Cabang Temanggung Drs. H. Rachmat Imampuro pada acara Mukercab PMI Temanggung, Kamis (26/2) yang berlangsung di aula Dinas Pendidikan setempat. Acara yang dihadiri oleh para pengurus cabang PMI, pengurus ranting PMI, dinas/instansi terkait tersebut juga dilakukan penyerahan subsidi dan obat-obatan kepada semua ranting PMI. Masing-masing ranting mendapat subsidi sebanyak Rp. 400 ribu yang terbagi menjadi kurang lebih enam pos.
Selain kegiatan donor darah, PMI Cabang Temanggung juga terlibat dalam kegiatan penanggulangan bencana alam dengan mengirimkan tenaga relawan dan bantuan keluar kota antara lain Sragen, Solo, Pati dan Kudus. Kegiatan lainnya berupa program pelatihan Flu Burung, pelatihan pelatih PMR dan mengikutsertakan pelatih untuk berpartisipasi dalam kegiatan di tingkat jawa Tengah.
Dalam tahun 2008 lalu, PMI Cabang Temanggung telah menyalurkan sumbangan uang senilai Rp. 15 juta lebih dan sumbangan lainnya berupa pakaian, makanan, minuman dan lain-lain. Sumbangan tersebut diberikan kepada peara korban bencana kebakaran, tanah longsor, angin ribut dan bencana lainnya. Sementara itu dalam berbagai kegiatan baik tingkat kabupaten maupun kegiatan khusus, PMI Temanggung juga ikut andil dalam kegiatan pertolongan pertama. Kegiatan tersebut diikuti oleh para relawan yang tergabung dalam kepengurusan PMI.
Ketua Panitia Akhmad Saryono, MPd mengatakan, mukercab adalah agenda rutin PMI sebagai media laporan pertanggung jawaban atas program kerja tahunan yang lalu dan penyusunan program kerja tahun yang akan datang. Mukercab juga mengagendakan rapat pleno yang akan dipimpin oleh dr. Adhi Midjaja, Sp.A. MKes yang menduduki jabatan sekretaris PMI Cabang Temanggung. (Arbai/Hari-Humas)</p>
                </div><!-- col-lg-6 -->

                <div class="col-lg-6">
                    <p>PMI Cabang Temanggung telah melakukan kegiatan donor darah selama tahun 2008 yang telah mencapai 8.160 orang. Dari jumlah itu terinci golongan A sebanyak 2.072 orang, golongan B sebanyak 2.329 orang, golongan O sebanyak 3.283 orang dan golongan AB 577 orang. Sementara dari jumlah itu sebanyak 101 orang mengalami kegagalan pada saat pengambilan darah.
Demikian dilaporkan oleh ketua PMI Cabang Temanggung Drs. H. Rachmat Imampuro pada acara Mukercab PMI Temanggung, Kamis (26/2) yang berlangsung di aula Dinas Pendidikan setempat. Acara yang dihadiri oleh para pengurus cabang PMI, pengurus ranting PMI, dinas/instansi terkait tersebut juga dilakukan penyerahan subsidi dan obat-obatan kepada semua ranting PMI. Masing-masing ranting mendapat subsidi sebanyak Rp. 400 ribu yang terbagi menjadi kurang lebih enam pos.
Selain kegiatan donor darah, PMI Cabang Temanggung juga terlibat dalam kegiatan penanggulangan bencana alam dengan mengirimkan tenaga relawan dan bantuan keluar kota antara lain Sragen, Solo, Pati dan Kudus. Kegiatan lainnya berupa program pelatihan Flu Burung, pelatihan pelatih PMR dan mengikutsertakan pelatih untuk berpartisipasi dalam kegiatan di tingkat jawa Tengah.
Dalam tahun 2008 lalu, PMI Cabang Temanggung telah menyalurkan sumbangan uang senilai Rp. 15 juta lebih dan sumbangan lainnya berupa pakaian, makanan, minuman dan lain-lain. Sumbangan tersebut diberikan kepada peara korban bencana kebakaran, tanah longsor, angin ribut dan bencana lainnya. Sementara itu dalam berbagai kegiatan baik tingkat kabupaten maupun kegiatan khusus, PMI Temanggung juga ikut andil dalam kegiatan pertolongan pertama. Kegiatan tersebut diikuti oleh para relawan yang tergabung dalam kepengurusan PMI.
Ketua Panitia Akhmad Saryono, MPd mengatakan, mukercab adalah agenda rutin PMI sebagai media laporan pertanggung jawaban atas program kerja tahunan yang lalu dan penyusunan program kerja tahun yang akan datang. Mukercab juga mengagendakan rapat pleno yang akan dipimpin oleh dr. Adhi Midjaja, Sp.A. MKes yang menduduki jabatan sekretaris PMI Cabang Temanggung. (Arbai/Hari-Humas)</p>
                </div><!-- col-lg-6 -->
            </div><!-- row -->
        </div><!-- container -->

        <!-- ==== SECTION DIVIDER1 -->
        <section class="section-divider textdivider divider1">
            <div class="container">
                <h1>PMI Kabupaten Temanggung</h1>
                <hr>
                <p>Test.</p>
            </div><!-- container -->
        </section><!-- section -->


        <!-- ==== SERVICES ==== -->
        <div class="container" id="service" name="service">
            <br>
            <br>
            <div class="row">
                <h2 class="centered">PMI Kabupaten Temanggung.</h2>
                <hr>
                <br>
                <div class="container">
                    <div class="col-lg-4 callout">
                        <span class="icon icon-stack"></span>
                        <h2>Stok Darah </h2>
                        <p>Untuk mengetahui informasi stok darah PMI Kabupaten Temanggung secara lengkap (WB, PRC, TC, FFP) dan terupdate setiap harinya. </p>
                    </div><!-- col-lg-4 -->

                    <div class="col-lg-4 callout">
                        <span class="icon icon-eye"></span>
                        <h2>Jadwal Donor Darah </h2>
                        <p>Informasi kegiatan donor darah (mobile unit) yang diadakan oleh PMI dengan Instansi yang ada di Kabupaten Temanggung & sekitarnya. </p>
                    </div><!-- col-lg-4 -->	

                    <div class="col-lg-4 callout">
                        <span class="icon icon-heart"></span>
                        <h2>Ambulance Service </h2>
                        <p>Pelayanan ambulans gawat darurat 24 Jam dan pelayanan ambulans transport.   </p>
                    </div><!-- col-lg-4 -->	
                </div><!-- row -->
            </div><!-- row -->
        </div><!-- container -->


        <!-- ==== SECTION DIVIDER2 -->
        <section class="section-divider textdivider divider2">
            <div class="container">
                <h1>PMI Kabupaten Temanggung</h1>
                <hr>
                <p>Test.</p>
            </div><!-- container -->
        </section><!-- section -->

        <!-- ==== TEAM MEMBERS ==== -->
        <div class="container" id="staff" name="staff">
            <br>
            <div class="row white centered">
                <h1 class="centered">Staff PMI Temanggung</h1>
                <hr>
                <br>
                <br>
                <div class="col-lg-3 centered">
                    <img class="img img-circle" src="" height="120px" width="120px" alt="">
                    <br>
                    <h4><b>Test</b></h4>
                    <a href="#" class="icon icon-twitter"></a>
                    <a href="#" class="icon icon-facebook"></a>
                    <a href="#" class="icon icon-flickr"></a>
                    <p>Test.</p>
                </div><!-- col-lg-3 -->

                <div class="col-lg-3 centered">
                    <img class="img img-circle" src="" height="120px" width="120px" alt="">
                    <br>
                    <h4><b>Test</b></h4>
                    <a href="#" class="icon icon-twitter"></a>
                    <a href="#" class="icon icon-facebook"></a>
                    <a href="#" class="icon icon-flickr"></a>
                    <p>Test.</p>
                </div><!-- col-lg-3 -->

                <div class="col-lg-3 centered">
                    <img class="img img-circle" src="" height="120px" width="120px" alt="">
                    <br>
                    <h4><b>Test</b></h4>
                    <a href="#" class="icon icon-twitter"></a>
                    <a href="#" class="icon icon-facebook"></a>
                    <a href="#" class="icon icon-flickr"></a>
                    <p>Test.</p>
                </div><!-- col-lg-3 -->

                <div class="col-lg-3 centered">
                    <img class="img img-circle" src="" height="120px" width="120px" alt="">
                    <br>
                    <h4><b>Test</b></h4>
                    <a href="#" class="icon icon-twitter"></a>
                    <a href="#" class="icon icon-facebook"></a>
                    <a href="#" class="icon icon-flickr"></a>
                    <p>Test.</p>
                </div><!-- col-lg-3 -->

            </div><!-- row -->
        </div><!-- container -->

        <!-- ==== SECTION DIVIDER3 -->
        <section class="section-divider textdivider divider3">
            <div class="container">
                <h1>PMI Kabupaten Temanggung</h1>
                <hr>
                <p>Test.</p>
            </div><!-- container -->
        </section><!-- section -->

        <!-- ==== PORTFOLIO ==== -->
        <div class="container" id="gallery" name="gallery">
            <br>
            <div class="row">
                <br>
                <h1 class="centered">Galeri</h1>
                <hr>
                <br>
                <br>
            </div><!-- /row -->
            <div class="container">
                <div class="row">	

                    <!-- PORTFOLIO IMAGE 1 -->
                    <div class="col-md-4 ">
                        <div class="grid mask">
                            <figure>
                                <img class="img-responsive" src="assets/img/portfolio/1.jpg" alt="">
                                <figcaption>
                                    <h5>DASHBOARD</h5>
                                    <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-lg">Take a Look</a>
                                </figcaption><!-- /figcaption -->
                            </figure><!-- /figure -->
                        </div><!-- /grid-mask -->
                    </div><!-- /col -->


                    <!-- MODAL SHOW THE PORTFOLIO IMAGE. In this demo, all links point to this modal. You should create
                         a modal for each of your projects. -->

                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Project Title</h4>
                                </div>
                                <div class="modal-body">
                                    <p><img class="img-responsive" src="assets/img/portfolio/folio01.jpg" alt=""></p>
                                    <p>This project was crafted for Some Name corp. Detail here a little about your job requirements and the tools used. Tell about the challenges faced and what you and your team did to solve it.</p>
                                    <p><b><a href="#">Visit Site</a></b></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->


                    <!-- PORTFOLIO IMAGE 2 -->
                    <div class="col-md-4">
                        <div class="grid mask">
                            <figure>
                                <img class="img-responsive" src="assets/img/portfolio/2.jpg" alt="">
                                <figcaption>
                                    <h5>UI DESIGN</h5>
                                    <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-lg">Take a Look</a>
                                </figcaption><!-- /figcaption -->
                            </figure><!-- /figure -->
                        </div><!-- /grid-mask -->
                    </div><!-- /col -->

                    <!-- PORTFOLIO IMAGE 3 -->
                    <div class="col-md-4">
                        <div class="grid mask">
                            <figure>
                                <img class="img-responsive" src="assets/img/portfolio/4.jpg" alt="">
                                <figcaption>
                                    <h5>ANDROID PAGE</h5>
                                    <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-lg">Take a Look</a>
                                </figcaption><!-- /figcaption -->
                            </figure><!-- /figure -->
                        </div><!-- /grid-mask -->
                    </div><!-- /col -->
                </div><!-- /row -->

                <br>
                <br>
            </div><!-- /row -->
        </div><!-- /container -->

        <!-- ==== SECTION DIVIDER4 ==== -->
        <section class="section-divider textdivider divider4">
            <div class="container">
                <h1>PMI Kabupaten Temanggung</h1>
                <hr>
                <p>Test.</p>
            </div><!-- container -->
        </section><!-- section -->

        <!-- ==== BLOG ==== -->
        <div class="container" id="Testimonial" name="Testimonial">
            <br>
            <div class="row">
                <br>
                <h1 class="centered">Testimonial</h1>
                <hr>
                <br>
                <br>
            </div><!-- /row -->

            <div class="row">
                <div class="col-lg-6 blog-bg">
                    <div class="col-lg-4 centered">
                        <br>
                        <p><img class="img img-circle" src="" width="60px" height="60px"></p>
                        <h4>Adhi Nugroho</h4>
                        <h5>Published Aug 30.</h5>
                    </div>
                    <div class="col-lg-8 blog-content">
                        <h2>Test</h2>
                        <p>Test</p>
                        <p><a href="#" class="icon icon-link"> Read More</a></p>
                        <br>
                    </div>
                </div><!-- /col -->

                <div class="col-lg-6 blog-bg">
                    <div class="col-lg-4 centered">
                        <br>
                        <p><img class="img img-circle" src="" width="60px" height="60px"></p>
                        <h4>Adhi Nugroho</h4>
                        <h5>Published Aug 28.</h5>
                    </div>
                    <div class="col-lg-8 blog-content">
                        <h2>Test</h2>
                        <p>Test.</p>
                        <p><a href="#" class="icon icon-link"> Read More</a></p>
                        <br>
                    </div>
                </div><!-- /col -->
            </div><!-- /row -->
            <br>
            <br>
        </div><!-- /container -->
      
        <jsp:include page="_footer.jsp"></jsp:include>

    </body>
</html>
