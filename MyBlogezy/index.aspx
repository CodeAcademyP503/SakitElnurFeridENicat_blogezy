﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MyBlogezy.index" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Responsive blog template">
        <meta name="author" content="Zoyothemes">

        <link rel="shortcut icon" href="images/favicon.ico">

        <title>Blogezy - Responsive Blog Template</title>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,600,700" rel="stylesheet">

        <!-- Bootstrap core CSS -->
        <link href="content/css/bootstrap.min.css" rel="stylesheet">

        <!-- MENU CSS -->
        <link href="content/css/metismenu.min.css" rel="stylesheet" type="text/css" />

        <!-- MATERIALDESIGN ICON -->
        <link rel="stylesheet" type="text/css" href="content/css/materialdesignicons.min.css">

        <!-- CUSTOM STYLESHEET -->
        <link href="content/css/style.css" rel="stylesheet" type="text/css" />
        <link href="content/css/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <!-- Begin page -->
        <div id="wrapper" runat="server">
            <!-- Top Bar Start -->
            <div class="topbar-mobile">
                <div class="logo">
                    <a href="index.html"><img src="images/logo.png" alt="" class="" style="height: 44px;"></a>
                    <button class="button-menu-mobile">
                        <i class="mdi mdi-menu"></i>
                    </button>
                </div>
            </div>
            <!-- Top Bar End -->
            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">

                <div class="slimscroll-menu" id="remove-scroll">

                    <div class="logo">
                        <a href="index.html"><img src="images/logo.png" alt="" class="" style="height: 44px;"></a>
                        <p class="text-muted">Graduating from the halls of the University Of Western Sydney in late 2011. </p>
                    </div>

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu" id="side-menu">
                            
                            <li>
                                <a href="index.html"><span> Home</span></a>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><span> Features </span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="standard-post.html">Standard Post</a></li>
                                    <li><a href="video-post.html">Video Post</a></li>
                                    <li><a href="audio-post.html">Audio Post</a></li>
                                    <li><a href="gallery-post.html">Gallery Post</a></li>
                                    <li><a href="quote-post.html">Quote Post</a></li>
                                    <li><a href="link-post.html">Link Post</a></li>
                                    <li><a href="404.html">Error 404</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><span> Lifestyle </span></a>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><span> Travel </span></a>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><span> Music </span></a>
                            </li>

                            <li>
                                <a href="about.html">About</a>
                            </li>

                            <li>
                                <a href="contact.html">Contact</a>
                            </li>

                        </ul>

                        <div class="copyright-box">
                            <p>2017 © Blogezy. </p>
                        </div>

                    </div>
                    <!-- Sidebar -->
                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->

            <div class="page-wrapper">
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="page-title">
                                    <div class="row">
                                     <div class="col-md-9 col-xs-12" runat="server"> 
                                         <h2><span> <% Response.Write(header.Name); %> </span></h2> 
                                          <p class="subtitle text-muted"><% Response.Write(header.Description); %></p> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="mt-5 pb-5">
                    <div class="container">

                        <div class="row">
                            <!-- Content-->
                            <div class="col-xl-8">

                                <%
                                    foreach (Article article in articles)
                                    {
                               %>
                                         <!-- Post-->
                                            <article class="post">

                                                <div class="post-header">
                                                    <h2 class="post-title"><a href="#"><%Response.Write(article.Name); %></a></h2>
                                                    <ul class="post-meta">
                                                        <li><i class="mdi mdi-calendar"></i> July 03, 2017</li>
                                                        <li><i class="mdi mdi-tag-text-outline"></i> <a href="#">Branding</a>, <a href="#">Design</a></li>
                                                        <li><i class="mdi mdi-comment-multiple-outline"></i> <a href="#">3 Comments</a></li>
                                                    </ul>
                                                </div>

                                                <div class="post-preview">
                                                    <a href="#"><img src="images/<%Response.Write(article.Photos); %>" alt="" class="img-fluid rounded"></a>
                                                </div>

                                                <div class="post-content">
                                                    <p><%Response.Write(article.Description); %></p>
                                                </div>

                                                <div><a href="#" class="btn btn-outline-custom">Read More <i class="mdi mdi-arrow-right"></i></a></div>

                                            </article>
                                     <!-- Post end-->
                                <%
                                    }
                                %>
                               
                                 

                                <!-- Pagination-->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <ul class="pagination">
                                            <li class="next"><a href="#"><i class="mdi mdi-chevron-left"></i></a></li>
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li class="prev"><a href="#"><i class="mdi mdi-chevron-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Pagination end-->
                            </div>
                            <!-- Content end-->

                            <!-- Sidebar-->
                            <div class="col-xl-4">
                                <div class="sidebar">

                                    <!-- Search widget-->
                                    <aside class="widget widget_search">
                                        <form>
                                            <input class="form-control pr-5" type="search" placeholder="Search...">
                                            <button class="search-button" type="submit"><span class="mdi mdi-magnify"></span></button>
                                        </form>
                                    </aside>

                                    <aside class="widget about-widget">
                                        <div class="widget-title">About Me</div>

                                        <div class="text-center">
                                            <img src="images/photo.jpg" alt="About Me" class="rounded-circle">

                                            <p>Quis vero phasellus hac nullam, in quam vitae duis adipiscing mauris leo, laoreet eget at quis, ante vestibulum vivamus vel. Sapien lobortis, eget orci purus amet pede, consectetur neque risus.</p>
                                        </div>

                                    </aside>

                                    <aside class="widget about-widget">
                                        <div class="widget-title">Subscribe & Follow</div>

                                        <ul class="socials">
                                            <li><a href="http://facebook.com"><i class="mdi mdi-facebook"></i></a></li>
                                            <li><a href="http://twitter.com"><i class="mdi mdi-twitter"></i></a></li>
                                            <li><a href="http://instagram.com"><i class="mdi mdi-instagram"></i></a></li>
                                            <li><a href="http://pinterest.com"><i class="mdi mdi-pinterest"></i></a></li>
                                        </ul>

                                    </aside>

                                    <!-- Categories widget-->
                                    <aside class="widget widget_categories">
                                        <div class="widget-title">Categories</div>
                                        <ul>
                                            <li><a href="#">Journey</a> (40)</li>
                                            <li><a href="#">Photography</a> (08)</li>
                                            <li><a href="#">Lifestyle</a> (11)</li>
                                            <li><a href="#">Food & Drinks</a> (21)</li>
                                        </ul>
                                    </aside>

                                    <!-- Recent entries widget-->
                                    <aside class="widget widget_recent_entries_custom">
                                        <div class="widget-title">Popular Posts</div>
                                        <ul>
                                            <li class="clearfix">
                                                <div class="wi">
                                                    <a href="#"><img src="images/works/img1.jpg" alt="" class="img-fluid"></a>
                                                </div>
                                                <div class="wb"><a href="#">Beautiful Day With Friends..</a> <span class="post-date">Jun 15, 2017</span></div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="wi">
                                                    <a href="#"><img src="images/works/img2.jpg" alt="" class="img-fluid"></a>
                                                </div>
                                                <div class="wb"><a href="#">Nature valley with cooling..</a> <span class="post-date">Jun 10, 2017</span></div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="wi">
                                                    <a href="#"><img src="images/works/img3.jpg" alt="" class="img-fluid"></a>
                                                </div>
                                                <div class="wb"><a href="#">15 Best Healthy and Easy Salad..</a> <span class="post-date">Jun 8, 2017</span></div>
                                            </li>
                                        </ul>
                                    </aside>

                                    <!-- Text widget-->
                                    <aside class="widget">
                                        <div class="widget-title">Text Widget</div>

                                        <p class="text-muted text-widget-des">Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. </p>

                                    </aside>

                                    <!-- Archives widget-->
                                    <aside class="widget">
                                        <div class="widget-title">Archives</div>

                                        <ul>
                                            <li><a href="#">March 2017</a> (40)</li>
                                            <li><a href="#">April 2017</a> (08)</li>
                                            <li><a href="#">May 2017</a> (11)</li>
                                            <li><a href="#">Jun 2017</a> (21)</li>
                                        </ul>

                                    </aside>

                                    <!-- Tags widget-->
                                    <aside class="widget widget_tag_cloud">
                                        <div class="widget-title">Tags</div>
                                        <div class="tagcloud">
                                            <a href="#">logo</a>
                                            <a href="#">business</a>
                                            <a href="#">corporate</a>
                                            <a href="#">e-commerce</a>
                                            <a href="#">agency</a>
                                            <a href="#">responsive</a>
                                        </div>
                                    </aside>
                                </div>
                            </div>
                            <!-- Sidebar end-->
                        </div>

                    </div>
                    <!-- end container -->
                </section>
            </div>
        </div>
        <!-- js placed at the end of the document so the pages load faster -->
        <script src="scripts/js/jquery.min.js"></script>
        <script src="scripts/js/popper.min.js"></script>
        <script src="scripts/js/bootstrap.min.js"></script>
        <script src="scripts/js/jquery.easing.min.js"></script>
        <script src="scripts/js/metisMenu.min.js"></script>
        <!--common script for all pages-->
        <script src="scripts/js/jquery.app.js"></script>
</body>
</html>
