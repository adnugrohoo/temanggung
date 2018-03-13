<%-- 
    Document   : HospitalList
    Created on : Aug 27, 2016, 12:25:17 PM
    Author     : Adhi
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="_header.jsp"></jsp:include>

        <body data-spy="scroll" data-offset="0" data-target="#navbar-main">

        <jsp:include page="_menu.jsp"></jsp:include>


            <div class="container">
                <div class="row white">
                    <br>
                        <div class="col-lg-12">
                            <h1 class="left-oriented">Daftar</h1>
                            <hr>
                        </div>

                        <div class="col-lg-12">
                            <a href="controler?/action=orderedit" class="btn btn-info btn-lg">Tambah Pesanan Baru</a>
                        </div>

                        <div class="col-lg-12">
                            <table class="table">
                                <thead>						
                                    <tr>
                                        <th>NO</th>
                                        <th>NO ORDER</th>
                                        <th>PASIEN</th>
                                        <th>TANGGAL</th>
                                        <th>NO KARTU</th>
                                        <th>TANGGAL DIGUNAKAN</th>
                                        <th>JUMLAH PERMINTAAN</th>
                                        <th>STATUS</th>
                                        <th width="10px">TINDAKAN</th>
                                    </tr>							
                                </thead>

                                <tbody>
                                <%int i = 1;%>
                                <c:forEach items="${orders}" var="order">    
                                    <tr>
                                        <td>
                                            <%=i%>
                                        </td>
                                        <td>
                                            ${order.getOrderNo()}
                                        </td>
                                        <td>
                                            ${order.patient.getPatientName()}
                                        </td>
                                        <td>
                                            ${order.getOrderTanggal()}
                                        </td>
                                        <td>
                                            ${order.getOrderNoKartu()}
                                        </td>              
                                        <td>
                                            ${order.getOrderTanggalDigunakan()}
                                        </td>       
                                        <td>
                                            ${order.getOrderJmlMinta()}
                                        </td>           
                                       <c:if test="${order.getOrderStatus() == '2'}">
                                                
                                        <td>
                                            <div class="boxRedColor"></div>                                          
                                        </td>
                                         </c:if>
                                        <c:if test="${order.getOrderStatus() == '1'}">
                                                
                                        <td>
                                            <a href="controler?/action=UbahStatusOrderII&id=${order.getOrderId()}"> <button class="boxYellowColor" style="font-size: 14px;text-align: center"  onclick="return confirm('Konfirmasi untuk menyelesaikan order ini?')">Konfirmasi</button></a>
                                        </td>
                                         </c:if>
                                        <c:if test="${order.getOrderStatus() == '3'}">      
                                        <td>
                                            <div class="boxGreenColor"></div>                                          
                                        </td>
                                         </c:if>
                                        <td align="center">
                                            <a href="controler?/action=orderprint&id=${order.getOrderId()}" class="glyphicon glyphicon-print" title="Print Order"></a>
                                            <a href="controler?/action=orderedit&id=${order.getOrderId()}" class="glyphicon glyphicon-edit" title="Edit Order"></a>
                                            <a href="controler?/action=orderdelete&id=${order.orderId}" class="glyphicon glyphicon-remove" title="Delete Order" onclick="return confirm('Anda yakin menghapus order ini?')"></a>
                                        </td>
                                    </tr>
                                    <%i++;%>
                                </c:forEach>
                            </tbody>

                            <tfoot>
                                <table>
                                    <tr>
                                        <td colspan="5" class="table-footer">
                                            <label style="padding-left: 5px;">Page : </label>    
                                            <%--For displaying Previous link except for the 1st page --%>
                                            <c:if test="${currentPage != 1}">
                                                <a href="controler?/action=orderList&page=${currentPage - 1}">Previous </a>
                                            </c:if>
                                            <%--For displaying Page numbers. 
                                            The when condition does not display a link for the current page--%>
                                            <c:forEach begin="1" end="${noOfPages}" var="i">
                                                <c:choose>
                                                    <c:when test="${currentPage eq i}">
                                                        ${i} 
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="controler?/action=orderList&page=${i}">${i} </a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <%--For displaying Next link --%>
                                            <c:if test="${currentPage lt noOfPages}">
                                                <a href="controler?/action=orderList&page=${currentPage + 1}"> Next</a>
                                            </c:if>
                                        </td>
                                    </tr>
                                </table>
                            </tfoot>
                        </table>


                    </div> <!--div col-->
            </div><!-- row -->


        </div><!-- container -->


        <div class="modal modal--scale-up" id="modal">

            <div class="modal__window">

                <button class="modal__close-btn" type="button" data-close-modal>
                    <svg class="modal__close-icon">
                        <use xlink:href="#icon-close"></use>
                    </svg>
                </button>

                <div class="modal__header">

                    <h2 class="modal__title">Title of modal</h2>

                </div>

                <div class="modal__content">

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis laoreet eros quis efficitur. Phasellus scelerisque eu est non sollicitudin. Mauris condimentum non sapien et scelerisque. Donec at lacinia mauris, nec rutrum metus. In vulputate luctus suscipit. Nulla sit amet lectus in odio ullamcorper ornare. Curabitur bibendum lacus nec tortor congue interdum.</p> 

                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec et lorem id neque semper scelerisque ut ac nunc. Donec rhoncus consequat pretium. In volutpat pretium dui, semper ullamcorper turpis auctor et. Cras suscipit, urna vel euismod consequat, libero lectus elementum augue, in rutrum nisi dolor vel urna. Pellentesque tincidunt, justo nec fringilla pharetra, justo turpis elementum tortor, ac venenatis nibh nulla at nisl.</p>

                    <button class="btn" type="button" data-close-modal>Close Modal</button>

                </div>

            </div>

        </div>

        <script src="assets/jsmodalmaster/js/modal.js"></script>

        <script>
            var modalEl = document.getElementById('modal');
            var modalInst = new Modal(modalEl, {
                openCallback: function () {
                    console.log('Callback for when Modal is open.');
                },
                closeCallback: function () {
                    console.log('Callback for when Modal is closed.');
                }
            });
            modalInst.init();
        </script>


        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>

