<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta charset="UTF-8" />
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <?php } ?>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!--base css styles-->
    <link rel="stylesheet" href="view/flatty/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/flatty/assets/font-awesome/css/font-awesome.min.css">

    <!--page specific css styles-->

    <!--flaty css styles-->
    <link rel="stylesheet" href="view/flatty/css/flaty.css">
    <link rel="stylesheet" href="view/flatty/css/flaty-responsive.css">

    <link rel="shortcut icon" href="view/flatty/img/favicon.ico">
    <script type="text/javascript" src="view/javascript/jquery/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
    <link type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="view/javascript/jquery/tabs.js"></script>
    <script type="text/javascript" src="view/javascript/jquery/superfish/js/superfish.js"></script>
    <script type="text/javascript" src="view/javascript/common.js"></script>
</head>
<body>

<!-- BEGIN Theme Setting -->
<div id="theme-setting">
    <a href="#"><i class="fa fa-gears fa fa-2x"></i></a>
    <ul>
        <li>
            <span>Skin</span>
            <ul class="colors" data-target="body" data-prefix="skin-">
                <li class="active"><a class="blue" href="#"></a></li>
                <li><a class="red" href="#"></a></li>
                <li><a class="green" href="#"></a></li>
                <li><a class="orange" href="#"></a></li>
                <li><a class="yellow" href="#"></a></li>
                <li><a class="pink" href="#"></a></li>
                <li><a class="magenta" href="#"></a></li>
                <li><a class="gray" href="#"></a></li>
                <li><a class="black" href="#"></a></li>
            </ul>
        </li>
        <li>
            <span>Navbar</span>
            <ul class="colors" data-target="#navbar" data-prefix="navbar-">
                <li class="active"><a class="blue" href="#"></a></li>
                <li><a class="red" href="#"></a></li>
                <li><a class="green" href="#"></a></li>
                <li><a class="orange" href="#"></a></li>
                <li><a class="yellow" href="#"></a></li>
                <li><a class="pink" href="#"></a></li>
                <li><a class="magenta" href="#"></a></li>
                <li><a class="gray" href="#"></a></li>
                <li><a class="black" href="#"></a></li>
            </ul>
        </li>
        <li>
            <span>Sidebar</span>
            <ul class="colors" data-target="#main-container" data-prefix="sidebar-">
                <li class="active"><a class="blue" href="#"></a></li>
                <li><a class="red" href="#"></a></li>
                <li><a class="green" href="#"></a></li>
                <li><a class="orange" href="#"></a></li>
                <li><a class="yellow" href="#"></a></li>
                <li><a class="pink" href="#"></a></li>
                <li><a class="magenta" href="#"></a></li>
                <li><a class="gray" href="#"></a></li>
                <li><a class="black" href="#"></a></li>
            </ul>
        </li>
        <li>
            <span></span>
            <a data-target="navbar" href="#"><i class="fa fa-square-o"></i> Fixed Navbar</a>
            <a class="hidden-inline-xs" data-target="sidebar" href="#"><i class="fa fa-square-o"></i> Fixed Sidebar</a>
        </li>
    </ul>
</div>
<!-- END Theme Setting -->

<!-- BEGIN Navbar -->
<div id="navbar" class="navbar">
<button type="button" class="navbar-toggle navbar-btn collapsed" data-toggle="collapse" data-target="#sidebar">
    <span class="fa fa-bars"></span>
</button>
<a class="navbar-brand" href="<?php echo $home; ?>">
    <small>
        <i class="fa fa-desktop"></i>
        Administrator
    </small>
</a>

<!-- BEGIN Navbar Buttons -->
<ul class="nav flaty-nav pull-right">
<!-- BEGIN Button Tasks -->
<li class="hidden-xs">
    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <i class="fa fa-tasks"></i>
        <span class="badge badge-warning">4</span>
    </a>

    <!-- BEGIN Tasks Dropdown -->
    <ul class="dropdown-navbar dropdown-menu">
        <li class="nav-header">
            <i class="fa fa-check"></i>
            4 Tasks to complete
        </li>

        <li>
            <a href="#">
                <div class="clearfix">
                    <span class="pull-left">Software Update</span>
                    <span class="pull-right">75%</span>
                </div>

                <div class="progress progress-mini">
                    <div style="width:75%" class="progress-bar progress-bar-warning"></div>
                </div>
            </a>
        </li>

        <li>
            <a href="#">
                <div class="clearfix">
                    <span class="pull-left">Transfer To New Server</span>
                    <span class="pull-right">45%</span>
                </div>

                <div class="progress progress-mini">
                    <div style="width:45%" class="progress-bar progress-bar-danger"></div>
                </div>
            </a>
        </li>

        <li>
            <a href="#">
                <div class="clearfix">
                    <span class="pull-left">Bug Fixes</span>
                    <span class="pull-right">20%</span>
                </div>

                <div class="progress progress-mini">
                    <div style="width:20%" class="progress-bar"></div>
                </div>
            </a>
        </li>

        <li>
            <a href="#">
                <div class="clearfix">
                    <span class="pull-left">Writing Documentation</span>
                    <span class="pull-right">85%</span>
                </div>

                <div class="progress progress-mini progress-striped active">
                    <div style="width:85%" class="progress-bar progress-bar-success"></div>
                </div>
            </a>
        </li>

        <li class="more">
            <a href="#">See tasks with details</a>
        </li>
    </ul>
    <!-- END Tasks Dropdown -->
</li>
<!-- END Button Tasks -->

<!-- BEGIN Button Notifications -->
<li class="hidden-xs">
    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <i class="fa fa-bell"></i>
        <span class="badge badge-important">5</span>
    </a>

    <!-- BEGIN Notifications Dropdown -->
    <ul class="dropdown-navbar dropdown-menu">
        <li class="nav-header">
            <i class="fa fa-warning"></i>
            5 Notifications
        </li>

        <li class="notify">
            <a href="#">
                <i class="fa fa-comment orange"></i>
                <p>New Comments</p>
                <span class="badge badge-warning">4</span>
            </a>
        </li>

        <li class="notify">
            <a href="#">
                <i class="fa fa-twitter blue"></i>
                <p>New Twitter followers</p>
                <span class="badge badge-info">7</span>
            </a>
        </li>

        <li class="notify">
            <a href="#">
                <img src="view/flatty/img/demo/avatar/avatar2.jpg" alt="Alex" />
                <p>David would like to become moderator.</p>
            </a>
        </li>

        <ul class="right" style="display: none;">
            <li id="store"><a href="<?php echo $store; ?>" target="_blank" class="top"><?php echo $text_front; ?></a>
                <ul>
                    <?php foreach ($stores as $stores) { ?>
                    <li><a href="<?php echo $stores['href']; ?>" target="_blank"><?php echo $stores['name']; ?></a></li>
                    <?php } ?>
                </ul>
            </li>
            <li><a class="top" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
        </ul>

        <li class="notify">
            <a href="#">
                <i class="fa fa-bug pink"></i>
                <p>New bug in program!</p>
            </a>
        </li>

        <li class="notify">
            <a href="#">
                <i class="fa fa-shopping-cart green"></i>
                <p>You have some new orders</p>
                <span class="badge badge-success">+10</span>
            </a>
        </li>

        <li class="more">
            <a href="#">See all notifications</a>
        </li>
    </ul>
    <!-- END Notifications Dropdown -->
</li>
<!-- END Button Notifications -->

<!-- BEGIN Button Messages -->
<li class="hidden-xs">
    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <i class="fa fa-envelope"></i>
        <span class="badge badge-success">3</span>
    </a>

    <!-- BEGIN Messages Dropdown -->
    <ul class="dropdown-navbar dropdown-menu">
        <li class="nav-header">
            <i class="fa fa-comments"></i>
            3 Messages
        </li>

        <li class="msg">
            <a href="#">
                <img src="view/flatty/img/demo/avatar/avatar3.jpg" alt="Sarah's Avatar" />
                <div>
                    <span class="msg-title">Sarah</span>
                                    <span class="msg-time">
                                        <i class="fa fa-clock-o"></i>
                                        <span>a moment ago</span>
                                    </span>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </a>
        </li>

        <li class="msg">
            <a href="#">
                <img src="view/flatty/img/demo/avatar/avatar4.jpg" alt="Emma's Avatar" />
                <div>
                    <span class="msg-title">Emma</span>
                                    <span class="msg-time">
                                        <i class="fa fa-clock-o"></i>
                                        <span>2 Days ago</span>
                                    </span>
                </div>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris ...</p>
            </a>
        </li>

        <li class="msg">
            <a href="#">
                <img src="view/flatty/img/demo/avatar/avatar5.jpg" alt="John's Avatar" />
                <div>
                    <span class="msg-title">John</span>
                                    <span class="msg-time">
                                        <i class="fa fa-clock-o"></i>
                                        <span>8:24 PM</span>
                                    </span>
                </div>
                <p>Duis aute irure dolor in reprehenderit in ...</p>
            </a>
        </li>

        <li class="more">
            <a href="#">See all messages</a>
        </li>
    </ul>
    <!-- END Notifications Dropdown -->
</li>
<!-- END Button Messages -->

<!-- BEGIN Button User -->
<li class="user-profile">
    <a data-toggle="dropdown" href="#" class="user-menu dropdown-toggle">
        <img class="nav-user-photo" src="view/flatty/img/demo/avatar/avatar1.jpg" alt="Penny's Photo" />
                        <span class="hhh" id="user_info">
                            Penny
                        </span>
        <i class="fa fa-caret-down"></i>
    </a>

    <!-- BEGIN User Dropdown -->
    <ul class="dropdown-menu dropdown-navbar" id="user_menu">
        <li class="nav-header">
            <i class="fa fa-clock-o"></i>
            Logined From 20:45
        </li>

        <li>
            <a href="#">
                <i class="fa fa-cog"></i>
                Account Settings
            </a>
        </li>

        <li>
            <a href="#">
                <i class="fa fa-user"></i>
                Edit Profile
            </a>
        </li>

        <li>
            <a href="#">
                <i class="fa fa-question"></i>
                Help
            </a>
        </li>

        <li class="divider visible-xs"></li>

        <li class="visible-xs">
            <a href="#">
                <i class="fa fa-tasks"></i>
                Tasks
                <span class="badge badge-warning">4</span>
            </a>
        </li>
        <li class="visible-xs">
            <a href="#">
                <i class="fa fa-bell"></i>
                Notifications
                <span class="badge badge-important">8</span>
            </a>
        </li>
        <li class="visible-xs">
            <a href="#">
                <i class="fa fa-envelope"></i>
                Messages
                <span class="badge badge-success">5</span>
            </a>
        </li>

        <li class="divider"></li>

        <li>
            <a href="#">
                <i class="fa fa-off"></i>
                Logout
            </a>
        </li>
    </ul>
    <!-- BEGIN User Dropdown -->
</li>
<!-- END Button User -->
</ul>
<!-- END Navbar Buttons -->
</div>
<!-- END Navbar -->

<!-- BEGIN Container -->
<div class="container" id="main-container">
    <!-- BEGIN Sidebar -->
    <div id="sidebar" class="navbar-collapse collapse">
        <!-- BEGIN Navlist -->
        <ul class="nav nav-list">
            <!-- BEGIN Search Form -->
            <li>
                <form target="#" method="GET" class="search-form">
                            <span class="search-pan">
                                <button type="submit">
                                    <i class="fa fa-search"></i>
                                </button>
                                <input type="text" name="search" placeholder="Search ..." autocomplete="off" />
                            </span>
                </form>
            </li>
            <!-- END Search Form -->
            <li class="active">
                <a href="<?php echo $home; ?>">
                    <i class="fa fa-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>

            <li>
                <a href="<?php echo $category; ?>">
                    <i class="fa fa-list-alt"></i>
                    <span>Quản lý danh mục</span>
                </a>
            </li>

            <li>
                <a href="<?php echo $product; ?>" >
                    <i class="fa fa-book"></i>
                    <span>Sản phẩm</span>

                </a>
            </li>

            <li>
                <a href="<?php echo $information; ?>">
                    <i class="fa fa-exclamation-circle"></i>
                    <span>Thông tin công ty</span>

                </a>
            </li>
            <li>
                <a href="#" class="dropdown-toggle" >
                    <i class="fa fa-user"></i>
                    <span>Khách hàng</span>
                    <b class="arrow fa fa-angle-right"></b>
                </a>
                <ul  <?php if(substr($route,0,4) == "sale") { ?> style="display: block;" <?php }  ?> class="submenu">
                    <li><a href="<?php echo $customer; ?>">Danh sách khách hàng</a></li>
                    <li><a href="<?php echo $contact; ?>">Send Mail cho khách hàng</a></li>
                </ul>
            </li>
            <li>
                <a href="#" >
                    <i class="fa fa-desktop"></i>
                    <span>Đánh giá</span>

                </a>
            </li>

            <li>
                <a href="<?php echo $order;  ?>" >
                    <i class="fa fa-shopping-cart"></i>
                    <span>Đơn hàng</span>

                </a>
            </li>


            <li>
                <a href="<?php echo $order_return;  ?>" >
                    <i class="fa fa-retweet"></i>
                    <span>Danh sách trả hàng</span>

                </a>
            </li>



            <li>
                <a href="#"  class="dropdown-toggle">
                    <i class="fa fa-picture-o"></i>
                    <span>Quản lý hình ảnh</span>
                    <b class="arrow fa fa-angle-right"></b>
                </a>

                <!-- BEGIN Submenu -->
                <ul <?php if(substr($route,0,4) == "design") { ?> style="display: block;" <?php }  ?> class="submenu">
                    <li><a href="ui_general.html">Slideshow</a></li>
                    <li><a href="ui_button.html">Banner</a></li>
                </ul>
                <!-- END Submenu -->
            </li>


            <li>
                <a href="<?php echo $user;  ?>" >
                    <i class="fa fa-users"></i>
                    <span>Người dùng</span>

                </a>
            </li>
            <li>
                <a href="<?php echo $setting;  ?>" >
                    <i class="fa fa-cogs"></i>
                    <span>Cấu hình web</span>

                </a>
            </li>

        </ul>
        <!-- END Navlist -->

        <!-- BEGIN Sidebar Collapse Button -->
        <div id="sidebar-collapse" class="visible-lg">
            <i class="fa fa-angle-double-left"></i>
        </div>
        <!-- END Sidebar Collapse Button -->
    </div>
    <!-- END Sidebar -->

    <!-- BEGIN Content -->
    <div id="main-content">




