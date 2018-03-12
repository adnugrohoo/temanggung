<%-- 
    Document   : index3
    Created on : Sep 23, 2016, 5:57:05 PM
    Author     : adhi
--%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script src="js/jquery.autocomplete.js"></script>
        <script>
            jQuery(function () {
                var data = "getData.jsp";
                $("#country").autocomplete(data);
                $("#country").result(function (event, data, formatted) {
                    if (data)
                        $("#hidden_field").val(data[1]);
                });
            });
        </script>

    </head>
    <body>
    <br><br><center>
        <font face="verdana" size="2">
        <font size="4">Java(jsp)/jQuery Autocompleter Example ::: <font color="#809e02">Java4s.com</font></font>
        <br><br><br><br>

        Select Country   :
        <input type="text" id="country" name="country"/>
        <input type="text" id="hidden_field" name="country2"/>

        </font>
    </body>
</html>