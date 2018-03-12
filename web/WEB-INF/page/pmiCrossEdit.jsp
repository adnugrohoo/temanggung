<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="_headerStaffPmi.jsp"></jsp:include>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            var dialog, form,
                    // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
                    emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
                    name = $("#name"),
                    email = $("#email"),
                    password = $("#password"),
                    allFields = $([]).add(name).add(email).add(password),
                    tips = $(".validateTips");

            function updateTips(t) {
                tips
                        .text(t)
                        .addClass("ui-state-highlight");
                setTimeout(function () {
                    tips.removeClass("ui-state-highlight", 1500);
                }, 500);
            }

            function checkLength(o, n, min, max) {
                if (o.val().length > max || o.val().length < min) {
                    o.addClass("ui-state-error");
                    updateTips("Length of " + n + " must be between " +
                            min + " and " + max + ".");
                    return false;
                } else {
                    return true;
                }
            }

            function checkRegexp(o, regexp, n) {
                if (!(regexp.test(o.val()))) {
                    o.addClass("ui-state-error");
                    updateTips(n);
                    return false;
                } else {
                    return true;
                }
            }

            function addUser() {
                var valid = true;
                allFields.removeClass("ui-state-error");

                valid = valid && checkLength(name, "username", 3, 16);
                valid = valid && checkLength(email, "email", 6, 80);
                valid = valid && checkLength(password, "password", 5, 16);

                valid = valid && checkRegexp(name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter.");
                valid = valid && checkRegexp(email, emailRegex, "eg. ui@jquery.com");
                valid = valid && checkRegexp(password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9");

                if (valid) {
                    $("#users tbody").append("<tr>" +
                            "<td>" + name.val() + "</td>" +
                            "<td>" + email.val() + "</td>" +
                            "<td>" + password.val() + "</td>" +
                            "</tr>");
                    dialog.dialog("close");
                }
                return valid;
            }

            dialog = $("#dialog-form").dialog({
                autoOpen: false,
                height: 400,
                width: 450,
                modal: true,
                buttons: {
                    "Create an account": addUser,
                    Cancel: function () {
                        dialog.dialog("close");
                    }
                },
                close: function () {
                    form[ 0 ].reset();
                    allFields.removeClass("ui-state-error");
                }
            });

            form = dialog.find("form").on("submit", function (event) {
                event.preventDefault();
                addUser();
            });

            $("#create-user").button().on("click", function () {
                dialog.dialog("open");
            });
        });
    </script>

    <script>
        $(function () {
            var availableTags = [
                "ActionScript",
                "AppleScript",
                "Asp",
                "BASIC",
                "C",
                "C++",
                "Clojure",
                "COBOL",
                "ColdFusion",
                "Erlang",
                "Fortran",
                "Groovy",
                "Haskell",
                "Java",
                "JavaScript",
                "Lisp",
                "Perl",
                "PHP",
                "Python",
                "Ruby",
                "Scala",
                "Scheme"
            ];
            $("#tags").autocomplete({
                source: availableTags
            });
        });
    </script>

    <script type="text/javascript">
        function lookup(inputString) {
            if (inputString.length == 0) {
                $('#suggestions').hide();
            } else {
                $.post("states.jsp", {queryString: "" + inputString + ""}, function (data) {
                    if (data.length > 0) {
                        $('#suggestions').show();
                        $('#autoSuggestionsList').html(data);
                    }
                });
            }
        }
        function fill(thisValue) {
            $('#inputString').val(thisValue);
            setTimeout("$('#suggestions').hide();", 200);
        }
    </script>

</head>
<body>

<jsp:include page="_menuStaffPmiLeftSide.jsp"></jsp:include>

    <!-- Right side -->
    <div id="rightSide">
    <jsp:include page="_menuStaffPmiTopNav.jsp"></jsp:include>

    <jsp:include page="_menuStaffPmiResponsive.jsp"></jsp:include>

        <div class="line"></div>

        <!-- Main content wrapper -->
        <div class="wrapper">

            <!-- Validation form -->

            <div id="dialog-form" title="Create new user">
                <p class="validateTips">All form fields are required.</p>

                <form>
                    <fieldset>
                        <label for="name">Name</label>
                        <input type="text" name="name" id="name" value="Jane Smith" class="text ui-widget-content ui-corner-all">
                        <label for="email">Email</label>
                        <input type="text" name="email" id="email" value="jane@smith.com" class="text ui-widget-content ui-corner-all">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" value="xxxxxxx" class="text ui-widget-content ui-corner-all">

                        <!-- Allow form submission with keyboard without duplicating the dialog button -->
                        <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
                    </fieldset>
                </form>
            </div>

            <form class="form" method="post" action="">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="assets/tfcrown/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Cross Match</h6></div>

                        <div class="formRow">
                            <div class="ui-widget">
                                <label for="tags">Tags: </label>
                                <input id="tags">

                                <div> <h3><font color="red">Indian States</states></font></h3> 
                                    <br /> Enter India State Name to see autocomplete
                                    <input type="text" size="30" value="" id="inputString" 
                                           onkeyup="lookup(this.value);" onblur="fill();" />
                                </div>
                                <div class="suggestionsBox" id="suggestions" style="display: none;">
                                    <div class="suggestionList" id="autoSuggestionsList">
                                    </div>
                                </div>

                            </div>

                            <div class="widgets">
                                <div class="oneTwo">
                                    <div class="widget">
                                        <div class="title"><h6></h6></div>
                                        <div class="formRow">
                                            <label>Nomor Kantong :&nbsp;&nbsp;&nbsp;</label>
                                            <label>${orderforedit.getOrderNo()}</label>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="formRow">
                                        <label>Name Pasien :<span class="req">*</span></label>
                                        <label>${orderforedit.patient.getPatientName()}</label><div class="clear"></div>
                                    </div> 
                                </div>
                            </div>
                            <div class="oneTwo">
                                <div class="widget">
                                    <div class="title"><h6></h6></div>
                                    <div class="formRow">
                                        <label>Nomor Order :&nbsp;&nbsp;&nbsp;</label>
                                        <label>${orderforedit.getOrderNo()}</label>
                                        <div class="clear"></div>
                                    </div>              

                                    <div class="formRow">
                                        <label>Tanggal Pengambilan :<span class="req">*</span></label>
                                        <label>${orderforedit.getOrderTanggal()}</label><div class="clear"></div>
                                    </div>
                                </div>
                            </div>

                            <%-- <button id="create-user">Create new user</button> --%>
                            <div class="formSubmit"><input id="create-user" value="submit" class="redB" /></div>

                            <div class="clear"></div>
                        </div>
                        <div class="widget">
                            <div  class="title"><img src="assets/tfcrown/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>List</h6></div>                          
                            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>No Kantong</th>
                                        <th>Jenis Komponen</th>
                                        <th>Tanggal</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%int i = 1;%>
                                    <c:forEach items="${komponens}" var="komponen">    
                                        <tr class="gradeX">
                                            <td>
                                                <%=i%>
                                            </td>
                                            <td>
                                                ${komponen.aftap.getAftapNoKantong()}
                                            </td>
                                            <td>
                                                ${komponen.comKomponenDarah.getComKomponenDarahName()}
                                            </td>
                                            <td>
                                                ${komponen.getKomponenTanggal()}
                                            </td>                                           
                                            <td align="center">
                                                <a href="controler?/action=komponenEdit&id=${komponen.getKomponenId()}" class="glyphicon glyphicon-edit" title="Edit Komponen"><img src="assets/tfcrown/images/icons/edit.png" alt=""></a>
                                                <a href="controler?/action=komponenDelete&id=${komponen.getKomponenId()}" class="glyphicon glyphicon-remove" title="Delete Komponen"><img src="assets/tfcrown/images/icons/remove.png" alt=""></a>
                                            </td>
                                        </tr>
                                        <%i++;%>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>


                        <c:if test="${orderforedit!=null}">
                            <div class="formSubmit"><input id="create-user" type="submit" formmethod="POST" value="submit" class="redB" /></div>
                            </c:if>
                            <c:if test="${orderforedit==null}">
                            <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=pmiOrderSave" value="submit" class="greenB" /></div>
                            </c:if>
                        <div class="clear"></div>
                    </div>

                </div>
            </fieldset>
        </form>
        <%-- 
        <form id="validate" class="form" method="post" action="">
            <fieldset>
                <div class="widget">
                    <div class="title"><img src="assets/tfcrown/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Cross Match</h6></div>

                        <div class="formRow">

                            <div class="widgets">
                                <div class="oneTwo">
                                    <div class="widget">
                                        <div class="title"><h6></h6></div>
                                        <div class="formRow">
                                            <label>Nomor Kantong :&nbsp;&nbsp;&nbsp;</label>
                                            <label>${orderforedit.getOrderNo()}</label>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="formRow">
                                        <label>Name Pasien :<span class="req">*</span></label>
                                        <label>${orderforedit.patient.getPatientName()}</label><div class="clear"></div>
                                    </div> 
                                </div>
                            </div>
                            <div class="oneTwo">
                                <div class="widget">
                                    <div class="title"><h6></h6></div>
                                    <div class="formRow">
                                        <label>Nomor Order :&nbsp;&nbsp;&nbsp;</label>
                                        <label>${orderforedit.getOrderNo()}</label>
                                        <div class="clear"></div>
                                    </div>              

                                    <div class="formRow">
                                        <label>Tanggal Pengambilan :<span class="req">*</span></label>
                                        <label>${orderforedit.getOrderTanggal()}</label><div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formSubmit"><input type="submit" value="Add Order" class="redB" data-toggle="modal" data-target="#myModal"/></div>
                        <!-- Dynamic table -->
                        <div class="widget">
                            <div  class="title"><img src="assets/tfcrown/images/icons/dark/full2.png" alt="" class="titleIcon" /><h6>List</h6></div>                          
                            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>No Kantong</th>
                                        <th>Jenis Komponen</th>
                                        <th>Tanggal</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%int i = 1;%>
                                    <c:forEach items="${komponens}" var="komponen">    
                                        <tr class="gradeX">
                                            <td>
                                                <%=i%>
                                            </td>
                                            <td>
                                                ${komponen.aftap.getAftapNoKantong()}
                                            </td>
                                            <td>
                                                ${komponen.comKomponenDarah.getComKomponenDarahName()}
                                            </td>
                                            <td>
                                                ${komponen.getKomponenTanggal()}
                                            </td>                                           
                                            <td align="center">
                                                <a href="controler?/action=komponenEdit&id=${komponen.getKomponenId()}" class="glyphicon glyphicon-edit" title="Edit Komponen"><img src="assets/tfcrown/images/icons/edit.png" alt=""></a>
                                                <a href="controler?/action=komponenDelete&id=${komponen.getKomponenId()}" class="glyphicon glyphicon-remove" title="Delete Komponen"><img src="assets/tfcrown/images/icons/remove.png" alt=""></a>
                                            </td>
                                        </tr>
                                        <%i++;%>
                                    </c:forEach>
                                </tbody>
                            </table>  
                        </div>
                    </div> 
                                    

                    <c:if test="${orderforedit!=null}">
                        <div class="formSubmit"><input id="create-user" type="submit" formmethod="POST" value="submit" class="redB" /></div>
                        </c:if>
                        <c:if test="${orderforedit==null}">
                        <div class="formSubmit"><input type="submit" formmethod="POST" formaction="controler?/action=pmiOrderSave" value="submit" class="greenB" /></div>
                        </c:if>
                    <div class="clear"></div>
                </div>
            </fieldset>
        </form>
        --%>
    </div>

    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">As usually all rights reserved. And as usually brought to you by <a href="http://themeforest.net/user/Kopyov?ref=kopyov" title="">Eugene Kopyov</a></div>
    </div>

</div>

<div class="clear"></div>
</body>
</html>