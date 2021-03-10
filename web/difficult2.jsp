


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="methods.DifficultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Discrete Project</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="ClassWork Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
        <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
        <link href="css/blast.min.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/style10.css" />
        <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
        <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Merriweather:300,400,700,900" rel="stylesheet">
    </head>
    <body>
        <div class="blast-box">
            <div class="blast-icon"><span class="fas fa-tint"></span></div>
            <div class="blast-frame">
                <p>change colors</p>
                <div class="blast-colors">
                    <div class="blast-color">#86bc42</div>
                    <div class="blast-color">#8373ce</div>
                    <div class="blast-color">#14d4f4</div>
                    <div class="blast-color">#72284b</div>
                </div>
                <p class="blast-custom-colors">Custom colors</p>
                <input type="color" name="blastCustomColor" value="#cf2626">
            </div>
        </div>
        <div class="header-outs" id="header">
            <div class="header-w3layouts">
                <div class="container">
                    <div class="row headder-contact">
                        <div class="col-lg-6 col-md-7 col-sm-9 info-contact-agile">
                            <ul>
                                <li>
                                    <span class="fas fa-phone-volume" ></span>
                                    <p>+(63)494 536 869</p>
                                </li>
                                <li>
                                    <span class="fas fa-envelope"></span>
                                    <p><a href="mailto:info@example.com">nikkiquintos@gmail.com/rommelurbano@gmail.com</a></p>
                                </li>
                                <li>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6 col-md-5 col-sm-3 icons px-0">
                            <ul>
                                <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                <li><a href="#"><span class="fas fa-envelope"></span></a></li>
                                <li><a href="#"><span class="fas fa-rss"></span></a></li>
                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="hedder-up">
                        <h1 ><a href="index.html" class="navbar-brand" data-blast="color">Discrete Project</a></h1>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="headdser-nav-color" data-blast="bgColor">
                        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                            <ul class="navbar-nav ">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="clearfix"> </div>
            </div>

            <div class="slider">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider4">                      
                        <li>
                            <div class="slider-img three-img">
                                <div class="container">
                                    <div class="slider-info text-center">
                                        <p> <font size ="25" color ="black"<h1>Long Sets</h1></font>
                                            <%
                                                String a = request.getParameter("categories");
                                                ArrayList<Integer> var = new ArrayList<>();
                                                HashSet<Integer> x = new HashSet<>();
                                                HashSet<Integer> y = new HashSet<>();
                                                int start = 0;
                                                int end = 0;
                                                boolean pass = false;
                                                try {
                                                    int initial = Integer.parseInt(request.getParameter("initial"));
                                                    int limit = Integer.parseInt(request.getParameter("end"));
                                                    start = initial;
                                                    end = limit;
                                                    pass = true;
                                                } catch (Exception e) {
                                                    out.print("INSUFFICIENT INPUT, RETURN TO MAIN MENU");
                                                }
                                            %>
                                        <p><%if (a == null) {
                                                out.print("No Number Condition Used");
                                            }%></p>
                                        <p><%if (a == "1") {
                                                out.print("Even Number Condition Used");
                                            }%></p>
                                        <p><%if (a == "2") {
                                                out.print("Odd Number Condition Used");
                                            }%></p>
                                        <p><%if (a == "3") {
                                                out.print("Non-Prime Number Condition Used");
                                            }%></p>
                                        <font color = "white" size = "5"<p><%
                                            if (Integer.parseInt(a) == 0) {
                                                for (int i = start; i <= end; i++) {
                                                    for (int j = start; j <= end; j++) {
                                                        var.add(i);
                                                        var.add(j);
                                                    }
                                                }
                                                for (int i = 0; i < var.size(); i++) {
                                                    if (i % 2 == 0) {
                                                        y.add(var.get(i));
                                                    } else {
                                                        x.add(var.get(i));
                                                    }
                                                }
                                                StringBuilder output = new StringBuilder();
                                                output.append("The Set Bn is: { ");
                                                for (Integer elem : x) {
                                                    for (Integer elem2 : y) {
                                                        output.append("(" + elem + "," + elem2 + "),");
                                                    }
                                                }
                                                output.replace(output.length()-1, output.length(), "");
                                                output.append("}");
                                                out.print(output.toString());

                                            } else if (Integer.parseInt(a) == 1) {
                                                for (int i = start; i <= end; i++) {
                                                    for (int j = start; j <= end; j++) {
                                                        if (i % 2 == 0 && j % 2 == 0) {
                                                            var.add(i);
                                                            var.add(j);
                                                        }
                                                    }
                                                }
                                                for (int i = 0; i < var.size(); i++) {
                                                    if (i % 2 == 0) {
                                                        y.add(var.get(i));
                                                    } else {
                                                        x.add(var.get(i));
                                                    }
                                                }

                                                out.print("The Set Bn is: { ");
                                                for (Integer elem : x) {
                                                    for (Integer elem2 : y) {
                                                        out.print("(" + elem + "," + elem2 + ")");
                                                    }
                                                }
                                                out.print("}");

                                            } else if (Integer.parseInt(a) == 2) {
                                                for (int i = start; i <= end; i++) {
                                                    for (int j = start; j <= end; j++) {
                                                        if (i % 2 == 1 && j % 2 == 1) {
                                                            var.add(i);
                                                            var.add(j);
                                                        }
                                                    }
                                                }
                                                for (int i = 0; i < var.size(); i++) {
                                                    if (i % 2 == 0) {
                                                        y.add(var.get(i));
                                                    } else {
                                                        x.add(var.get(i));
                                                    }
                                                }

                                                out.print("The Set Bn is: { ");
                                                for (Integer elem : x) {
                                                    for (Integer elem2 : y) {
                                                        out.print("(" + elem + "," + elem2 + ")");
                                                    }
                                                }
                                                out.print("}");

                                            } else if (Integer.parseInt(a) == 3) {
                                                for (int i = start; i <= end; i++) {
                                                    if (DifficultSet.CheckPrime(i) == true) {
                                                        var.add(i);
                                                    }
                                                }
                                                for (int i = 0; i < var.size(); i++) {
                                                    if (i % 2 == 0) {
                                                        y.add(var.get(i));
                                                    } else {
                                                        x.add(var.get(i));
                                                    }
                                                }

                                                out.print("The Set Bn is: { ");
                                                for (Integer elem : x) {
                                                    for (Integer elem2 : y) {
                                                        out.print("(" + elem + "," + elem2 + ")");
                                                    }
                                                }
                                                out.print("}");
                                            } else if (Integer.parseInt(a) == 4) {
                                                for (int i = start; i <= end; i++) {
                                                    if (DifficultSet.CheckPrime(i) == false) {
                                                        var.add(i);
                                                    }
                                                }
                                                for (int i = 0; i < var.size(); i++) {
                                                    if (i % 2 == 0) {
                                                        y.add(var.get(i));
                                                    } else {
                                                        x.add(var.get(i));
                                                    }
                                                }
                                                out.print("The Set Bn is: { ");
                                                for (Integer elem : x) {
                                                    for (Integer elem2 : y) {
                                                        out.print("(" + elem + "," + elem2 + ")");
                                                    }
                                                    out.print(",");
                                                }
                                                out.print("}");
                                            }
                                            HashSet<String> strs = new HashSet<>(x.size());
                                            for (Integer val : x) {
                                                strs.add(val.toString());
                                            }
                                            HashSet<String> strs1 = new HashSet<>(y.size());
                                            for (Integer val : y) {
                                                strs1.add(val.toString());
                                            }
                                            %></p></font>
                                        <p>Set X is:</p>
<textarea name="" rows="5" cols="50" disabled="disable" style="text-align: center; display: inline-block">
<%out.print(x.toString());%>
</textarea>
                                        <p>Set Y is:</p> 
<textarea name="" rows="5" cols="50" disabled="disable" style="text-align: center; display: inline-block">
<%out.print(y.toString());%>
</textarea>
                                        <p>Union of set X and set Y:</p>
<textarea name="" rows="5" cols="50" disabled="disable" style="text-align: center; display: inline-block">
<%out.println(DifficultSet.calculateUnion(strs, strs1));%>
</textarea>
                                        <p>Intersection of set X and set Y:</p>
<textarea name="" rows="5" cols="50" disabled="disable" style="text-align: center; display: inline-block">
<%out.println(DifficultSet.calculateintersection(strs, strs1));%> 
</textarea>
                                        <p>The Prime of set X is:</p>
<textarea name="" rows="5" cols="50" disabled="disable" style="text-align: center; display: inline-block">
<%out.println(DifficultSet.calculateXPrime(strs, strs1));%>
</textarea>
                                        <p>The Prime of set Y is:</p>
<textarea name="" rows="5" cols="50" disabled="disable" style="text-align: center; display: inline-block">
<%out.println(DifficultSet.calculateYPrime(strs, strs1));%>
</textarea>
                                        <p>The Prime of Set Bn is:</p>
                                        <!--<input type="text" name="" class="text-center" value="<%out.println(DifficultSet.calculateOrderedPairSet(strs, strs1));%>" size="50" disabled="disabled" />-->
<textarea name="" rows="5" cols="50" disabled="disable" style="text-align: center; display: inline-block">
<%out.println(DifficultSet.calculateOrderedPairSet(strs, strs1));%>
</textarea>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <footer class="py-3">
            <div class="container">
                <div class="copy-agile-right text-center">
                    <div class="list-social-icons text-center py-lg-4 py-md-3 py-3">
                        <ul>
                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                            <li><a href="#"><span class="fas fa-envelope"></span></a></li>
                            <li><a href="#"><span class="fas fa-rss"></span></a></li>
                            <li><a href="#"><span class="fab fa-vk"></span></a></li>
                        </ul>
                    </div>
                    <p> 
                        © 2018 ClassWork. All Rights Reserved | Design by <a href="http://www.W3Layouts.com" target="_blank">Nikki Quintos & Rommel Urbano Jr</a>
                    </p>
                </div>
            </div>
        </footer>

    </body>

</html>
