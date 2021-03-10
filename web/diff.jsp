
<%@page import="org.apache.catalina.tribes.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashSet"%>
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
                                        <p> <font size="25" color = "black"<h1>Difference of Two Sets</h1></font>
                                            <%
                                                HashSet<String> setB = new HashSet<>();
                                                HashSet<String> setA = new HashSet<>();
                                                String SetA = request.getParameter("setA");
                                                String SetB = request.getParameter("setB");
                                                boolean pass = false;
                                                if (SetA == "" || SetB == "") {
                                                    out.println("RETURN TO MAIN PAGE, INSUFFICIENT INPUT");
                                                } else {
                                                    pass = true;
                                                }
                                                if (pass == true) {
                                                    String[] arr = SetA.split(",");
                                                    for (String elem : arr) {
                                                        setA.add((elem));

                                                    }
                                                    arr = SetB.split(",");
                                                    for (String elem : arr) {
                                                        setB.add((elem));
                                                    }
                                                }

                                            %>

                                        <p>Set A: </p><input type="text" name=""class="text-center" value="<%=setA.toString()%>" size="50" disabled="disabled" />
                                        <br>
                                        <p>Set B:</p><input type="text" name="" class="text-center" value="<%=setB.toString()%>" size="50" disabled="disabled"/>
                                        <%for (String elem : setB) {
                                                if (setA.contains(elem)) {
                                                    setA.remove(elem);
                                                }
                                            }%>
                                        <br>
                                        <p>Answer A-B:</p> <input type="text" name="" class="text-center" value="<%out.print(Arrays.toString(setA.toArray()));%>" size="50" disabled="disabled"/>
                                        <%  
                                            String[] check = SetA.split(",");
                                            for (String elem : check) {
                                                if (setB.contains(elem)) {
                                                    setB.remove(elem);
                                                }
                                            }%>
                                        <p>Answer B-A:</p> <input type="text" name="" class="text-center" value="<%out.print(Arrays.toString(setB.toArray()));%>" size="50" disabled="disabled"/>
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
