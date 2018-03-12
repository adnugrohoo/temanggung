<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Test</title>
    </head>
    <body>

        <div id="navbar-main">

            <!-- navbar fixed atas -->
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed navbar-default" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div id="logo">
                            <a href="http://www.pmi.or.id" title="PMI Kab Temanggung">
                                <img src="assets/img/logo-PMI.png" alt="PMI Kab Temanggung" title="PMI Kab Temanggung">
                                </img>
                            </a>
                        </div>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="#home" class="smoothScroll">Home</a></li>
                            <li> <a href="#about" class="smoothScroll"> About</a></li>
                            <li> <a href="#service" class="smoothScroll"> Services</a></li>
                            <li> <a href="#staff" class="smoothScroll"> Staff</a></li>
                            <li> <a href="#gallery" class="smoothScroll"> Gallery</a></li>
                            <li> <a href="#Testimonial" class="smoothScroll"> Testimonial</a></li>
                            <li> <a href="#contact" class="smoothScroll"> Contact</a></li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">

                            <c:if test="${loginashospital.getHospitalName()!=null}">
                                <li class="dropdown show-on-hover">
                                    <a href="http://phpoll.com/register" class="dropdown-toggle" data-toggle="dropdown">Menu Rumah Sakit ${loginashospital.getHospitalName()}<span class="caret"></span></a>
                                    <ul class="dropdown-menu dropdown-lr animated flipInX" role="menu">
                                        <div class="col-lg-12">
                                            <div class="panel-group" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                                                                </span>Data Master</a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseOne" class="panel-collapse collapse in">
                                                        <div class="panel-body">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="controler?/action=patientList">Data Pasien</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-flash text-success"></span><a href="controler?/action=docterList">Data Dokter</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-file text-info"></span><a href="controler?/action=staffHospitalList">Data Petugas</a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-th">
                                                                </span>Transaksi</a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseTwo" class="panel-collapse collapse in">
                                                        <div class="panel-body">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>
                                                                        <a href="controler?/action=orderList">Permintaan Kantong Darah</a></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <a href="http://www.jquery2dotnet.com">Permintaan Kantong Darah (Dropping)</a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                                                                </span>Account</a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseThree" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>
                                                                        <a href="http://www.jquery2dotnet.com">Change Password</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">
                                                                            Delete Account</a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                                                                </span>Reports</a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseFour" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-usd"></span><a href="http://www.jquery2dotnet.com">Sales</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-user"></span><a href="http://www.jquery2dotnet.com">Customers</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-tasks"></span><a href="http://www.jquery2dotnet.com">Products</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="glyphicon glyphicon-shopping-cart"></span><a href="http://www.jquery2dotnet.com">Shopping Cart</a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <td>
                                                                <span class="glyphicon glyphicon-file"></span><a href="controler?/action=logout">Logout</a>
                                                            </td>
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ul>
                                </li>                                

                            </c:if>

                            <c:if test="${loginashospital.getHospitalName()==null}">

                                <li class="dropdown">
                                    <a href="http://phpoll.com/login" class="dropdown-toggle" data-toggle="dropdown">Log In <span class="caret"></span></a>
                                    <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
                                        <div class="col-lg-12">
                                            <div class="text-center"><h3><b>Log In</b></h3></div>
                                            <form id="ajax-login-form" action="http://phpoll.com/login/process" method="post" role="form" autocomplete="off">
                                                <div class="form-group">
                                                    <label for="username">Username</label>
                                                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" autocomplete="off">
                                                </div>

                                                <div class="form-group">
                                                    <label for="password">Password</label>
                                                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" autocomplete="off">
                                                </div>

                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-xs-7">
                                                            <input type="checkbox" tabindex="3" name="remember" id="remember">
                                                                <label for="remember"> Remember Me</label>
                                                        </div>
                                                        <div class="col-xs-5 pull-right">
                                                            <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-success" value="Log In"  formmethod="post" formaction="controler?/action=loginhospital" >
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="text-center">
                                                                <a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <input type="hidden" class="hide" name="token" id="token" value="a465a2791ae0bae853cf4bf485dbe1b6">
                                            </form>
                                        </div>
                                    </ul>
                                </li>
                            </c:if>

                        </ul>
                    </div>
                </div>
            </nav>
            <!-- end off navbar fixed atas -->
        </div>
    </body>
</html>