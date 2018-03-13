<%-- 
    Document   : MasterPageStaffPmi
    Created on : Sep 15, 2016, 8:14:50 PM
    Author     : adhi
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
        <title>PMI Kabupaten Temanggung</title>
        <link href="assets/css/notifikasi.css" rel="stylesheet" type="text/css" />
        <link href="assets/tfcrown/css/main.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/spinner/ui.spinner.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/spinner/jquery.mousewheel.js"></script>


        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/charts/excanvas.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/charts/jquery.flot.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/charts/jquery.flot.orderBars.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/charts/jquery.flot.pie.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/charts/jquery.flot.resize.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/charts/jquery.sparkline.min.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/uniform.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/jquery.cleditor.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/jquery.validationEngine-en.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/jquery.validationEngine.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/jquery.tagsinput.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/autogrowtextarea.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/jquery.maskedinput.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/jquery.dualListBox.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/jquery.inputlimiter.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/forms/chosen.jquery.min.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/wizard/jquery.form.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/wizard/jquery.validate.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/wizard/jquery.form.wizard.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/uploader/plupload.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/uploader/plupload.html5.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/uploader/plupload.html4.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/uploader/jquery.plupload.queue.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/tables/datatable.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/tables/tablesort.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/tables/resizable.min.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.tipsy.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.collapsible.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.progress.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.timeentry.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.colorpicker.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.jgrowl.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.breadcrumbs.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/ui/jquery.sourcerer.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/plugins/calendar.min.js"></script>
        <script type="text/javascript" src="assets/tfcrown/js/plugins/elfinder.min.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/custom.js"></script>

        <script type="text/javascript" src="assets/tfcrown/js/charts/chart.js"></script>



        <script type="text/javascript">
            $(function () {
                $("#date").datepicker({minDate: '0', dateFormat: 'yy-dd-mm'});
            });
        </script>

        <script>
            $(function () {
                $("#dialog").dialog();
            });
        </script>

        <style>
            hr {
                display: block;
                height: 1px;
                border: 0;
                border-top: 1px solid #ccc;
                margin: 1em 0;
                padding: 0;
            }
            .btn {
                background: #3498db;
                background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
                background-image: -moz-linear-gradient(top, #3498db, #2980b9);
                background-image: -ms-linear-gradient(top, #3498db, #2980b9);
                background-image: -o-linear-gradient(top, #3498db, #2980b9);
                background-image: linear-gradient(to bottom, #3498db, #2980b9);
                -webkit-border-radius: 28;
                -moz-border-radius: 28;
                border-radius: 28px;
                -webkit-box-shadow: 5px 5px 3px #666666;
                -moz-box-shadow: 5px 5px 3px #666666;
                box-shadow: 5px 5px 3px #666666;
                font-family: Arial;
                color: #ffffff;
                font-size: 14px;
                padding: 10px 20px 10px 20px;
                border: solid #000000 0px;
                text-decoration: none;
                position: relative;
                left: 60%;
            }

            .btn:hover {
                background: #3cb0fd;
                background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
                background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
                text-decoration: none;
            }
        </style>
        <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
