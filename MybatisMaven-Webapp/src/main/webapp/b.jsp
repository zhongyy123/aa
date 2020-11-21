<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/main.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/perfect-scrollbar.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/main.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script><!-- 引用jquery.js -->
    <title>李杰名照图库</title>
</head>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <div id="logo" class="sidebar-header">
                <a href="list"><img src="images/11.gif" alt="The selected child description" title="LightYear"/></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item"><a href="index.jsp"><i class="mdi mdi-home"></i> 首页</a></li>
                        <li class="nav-item"><a href="list"><i class="mdi mdi-pencil"></i> CRUD</a></li>
                        <li class="nav-item nav-item-has-subnav active open">
                            <a href="javascript:void(0)"><i class="mdi mdi-palette"></i> UI 图库</a>
                            <ul class="nav nav-subnav">
                                <li><a href="a.jsp">李杰名照</a></li>
                                <li><a href="b.jsp">幻灯片</a></li>
                                <li><a href="head.jsp">李杰头像库</a></li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-palette"></i> 李杰娱乐</a>
                            <ul class="nav nav-subnav">
                                <li><a href="play.jsp">找色块</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> UI 图库 - 幻灯片 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="aaa.jpg" alt="增删改查"/>
                                <span>设置<span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="login.jsp"><i class="mdi mdi-logout-variant"></i> 退出登录</a></li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>                      
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>                      
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>                      
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>                      
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>                      
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>
                </div>
            </nav>
        </header>

        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">

                                <div>
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header"><h4>幻灯片1</h4></div>
                                            <div class="card-body">
                                                <div id="w" class="carousel slide" data-ride="carousel">
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#w" data-slide-to="1" class="active"></li>
                                                        <li data-target="#w" data-slide-to="2"></li>
                                                        <li data-target="#w" data-slide-to="3"></li>
                                                    </ol>
                                                    <div class="carousel-inner">
                                                        <div class="item active"><img src="images/a.jpg" alt="图片一">
                                                        </div>
                                                        <div class="item"><img src="images/b.jpg" alt="图片二"></div>
                                                        <div class="item"><img src="images/c.jpg" alt="图片三"></div>
                                                    </div>
                                                    <a class="left carousel-control" href="#w" role="button"
                                                       data-slide="prev"><span class="icon-left-open-big icon-prev"
                                                                               aria-hidden="true"></span><span
                                                            class="sr-only">Previous</span></a>
                                                    <a class="right carousel-control" href="#w" role="button"
                                                       data-slide="next"><span class="icon-right-open-big icon-next"
                                                                               aria-hidden="true"></span><span
                                                            class="sr-only">Next</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header"><h4>幻灯片2</h4></div>
                                            <div class="card-body">
                                                <div id="t" class="carousel slide" data-ride="carousel">
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#t" data-slide-to="1" class="active"></li>
                                                        <li data-target="#t" data-slide-to="2"></li>
                                                        <li data-target="#t" data-slide-to="3"></li>
                                                    </ol>
                                                    <div class="carousel-inner">
                                                        <div class="item active"><img src="images/d.jpg" alt="图片一">
                                                        </div>
                                                        <div class="item"><img src="images/e.jpg" alt="图片二"></div>
                                                        <div class="item"><img src="images/f.jpg" alt="图片三"></div>
                                                    </div>
                                                    <a class="left carousel-control" href="#t" role="button"
                                                       data-slide="prev"><span class="icon-left-open-big icon-prev"
                                                                               aria-hidden="true"></span><span
                                                            class="sr-only">Previous</span></a>
                                                    <a class="right carousel-control" href="#t" role="button"
                                                       data-slide="next"><span class="icon-right-open-big icon-next"
                                                                               aria-hidden="true"></span><span
                                                            class="sr-only">Next</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header"><h4>幻灯片3</h4></div>
                                            <div class="card-body">
                                                <div id="n" class="carousel slide" data-ride="carousel">
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#n" data-slide-to="1" class="active"></li>
                                                        <li data-target="#n" data-slide-to="2"></li>
                                                        <li data-target="#n" data-slide-to="3"></li>
                                                    </ol>
                                                    <div class="carousel-inner">
                                                        <div class="item active"><img src="aaa.jpg" alt="图片一"></div>
                                                        <div class="item"><img src="images/g.jpg" alt="图片二"></div>
                                                        <div class="item"><img src="images/k.jpg" alt="图片三"></div>
                                                    </div>
                                                    <a class="left carousel-control" href="#n" role="button"
                                                       data-slide="prev"><span class="icon-left-open-big icon-prev"
                                                                               aria-hidden="true"></span><span
                                                            class="sr-only">Previous</span></a>
                                                    <a class="right carousel-control" href="#n" role="button"
                                                       data-slide="next"><span class="icon-right-open-big icon-next"
                                                                               aria-hidden="true"></span><span
                                                            class="sr-only">Next</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
        </main>
    </div>
</div>
</body>
</html>