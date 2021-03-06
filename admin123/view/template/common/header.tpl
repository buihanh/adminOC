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
	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
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
	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
    <script type="application/javascript" >
        jQuery(document).ready(function () {
            //hide a div after 3 seconds
            setTimeout( "jQuery('.success').hide();",3000 );
        });
    </script>
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


    <!-- BEGIN Tasks Dropdown

    <li class="hidden-xs">
    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <i class="fa fa-tasks"></i>
        <span class="badge badge-warning">4</span>
    </a>
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
    </li>
     END Tasks Dropdown -->


<!-- END Button Tasks -->

<!-- BEGIN Button Notifications -->
<li class="hidden-xs">
    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <i class="fa fa-bell"></i>
        <span class="badge badge-important"><?php echo count($Orders); ?></span>
    </a>

    <!-- BEGIN Notifications Dropdown -->
    <ul class="dropdown-navbar dropdown-menu">
        <li class="nav-header">
            <i class="fa fa-warning"></i>
           Đơn hàng mới
        </li>
        <?php  foreach($Orders as $order ){ ?>
        <li class="notify">
            <a href="<?php echo $order['href']; ?>">
                <p><?php echo $order['name']; ?></p>
            </a>
        </li>
        <?php } ?>


        <ul class="right" style="display: none;">
            <li id="store"><a href="<?php echo $store; ?>" target="_blank" class="top"><?php echo $text_front; ?></a>
                <ul>
                    <?php  foreach ($stores as $stores) { ?>
                    <li><a href="<?php echo $stores['href']; ?>" target="_blank"><?php echo $stores['name']; ?></a></li>
                    <?php } ?>
                </ul>
            </li>
            <li><a class="top" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
        </ul>



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
        <span class="badge badge-success"><?php echo count($Reviewss); ?></span>
    </a>

    <!-- BEGIN Messages Dropdown -->
    <ul class="dropdown-navbar dropdown-menu">
        <li class="nav-header">
            <i class="fa fa-comments"></i>
            <?php echo count($Reviewss); ?> Đánh giá
        </li>
        <?php

         foreach($Reviewss as $review){ ?>
            <li class="msg">
                <a href="#">

                    <div>
                        <span class="msg-title"><?php echo $review['author']; ?></span>
                        <span class="msg-time">
                            <i class="fa fa-clock-o"></i>
                            <span><?php echo $review['date_added']; ?></span>
                        </span>
                    </div>

                </a>
            </li>
        <?php } ?>
        <li class="more">
            <a href="<?php echo $review1; ?>">Xem chi tiết</a>
        </li>
    </ul>
    <!-- END Notifications Dropdown -->
</li>
<!-- END Button Messages -->

<!-- BEGIN Button User -->
<li class="user-profile">
    <a data-toggle="dropdown" href="#" class="user-menu dropdown-toggle">
        <i class="fa fa-meh-o climguser"></i>
                        <span class="hhh" id="user_info">
                            <?php echo $username;  ?>
                        </span>
        <i class="fa fa-caret-down"></i>
    </a>

    <!-- BEGIN User Dropdown -->
    <ul class="dropdown-menu dropdown-navbar" id="user_menu">
        <li class="nav-header">
            <i class="fa fa-clock-o"></i>
             <?php echo $date_time; ?>
        </li>



        <li>
            <a class="update-acount" href="#">
                <i class="fa fa-user"></i>
                Cập nhật thông tin
            </a>
        </li>
        <li>
            <a class="update-password" href="#">
                <i class="fa fa-compass"></i>
                Thay đổi mật khẩu
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


                <a href=" <?php  echo $logout;  ?>" > <i class="fa fa-off"></i> Thoát</a>

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
                <a href="<?php echo $review1; ?>" >
                    <i class="fa fa-desktop"></i>
                    <span>Đánh giá</span>

                </a>
            </li>

            <li>
                <a href="<?php echo $orders;  ?>" >
                    <i class="fa fa-shopping-cart"></i>
                    <span>Đơn hàng</span>

                </a>
            </li>

<!--
            <li>
                <a href="<?php echo $order_return;  ?>" >
                    <i class="fa fa-retweet"></i>
                    <span>Danh sách trả hàng</span>

                </a>
            </li>
-->


            <li>
                <a href="<?php echo $banner;   ?>" >
                    <i class="fa fa-picture-o"></i>
                    <span>Quản lý hình ảnh</span>

                </a>

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

        <li>
            <a href="<?php echo $menu;  ?>" >
                <i class="fa fa-list"></i>
                <span>Thiết kế menu</span>

            </a>
        </li>

            <li>
                <a href="<?php echo $template;  ?>" >
                    <i class="fa fa-wrench"></i>
                    <span>Cấu hình giao diện</span>

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




        <script type="application/javascript">
            $('.update-acount').click(function(){
                $(".err_acount").html();
                var url = $('base').attr('href') + 'index.php?route=user/user/getinfo&token=<?php echo $this->session->data["token"]; ?>';
                $.ajax({
                    type: "post",
                    url : url,
                    dataType : "json",
                    success : function(data){
                        $("#firstname").val(data['firstname']);
                        $("#lastname").val(data['lastname']);
                        $("#email").val(data['email']);

                        $("#dialog-acount").dialog({modal: true, height: 300, width: 550 });
                        $("#dialog-acount").dialog('option', 'title', 'Cập nhật thông tin');
                    }
                });

            });



            $('.update-password').click(function(){
                $(".err_password").html();
                $("#dialog-password").dialog({modal: true, height: 400, width: 550 });
                $("#dialog-password").dialog('option', 'title', 'Thay đổi mật khẩu');
            });
            function fcupdateacount(){

                var firstname = $("#firstname").val();
                var lastname = $("#lastname").val();
                var email = $("#email").val();


                var temp = '';
                if(firstname=="")
                    temp += "Vui lòng nhập họ và tên đệm! <br/>";
                if(lastname=="")
                    temp += 'Vui lòng nhập tên! <br/>';

                if(temp!='')
                {
                    $(".err_acount").html(temp);
                    return false;
                }


                var url = $('base').attr('href') + 'index.php?route=user/user/update_acount&token=<?php echo $this->session->data["token"]; ?>';
                $.ajax({
                    type: "post",
                    data:{'firstname':firstname, 'lastname':lastname, 'email':email },
                    url : url,
                    dataType : "html",
                    success : function(data){
                        $("#dialog-acount").dialog("close");
                    }
                });

            }
            function fcupdatepass(){
                var password_current = $("#password_current").val();
                var password_confirm = $("#password_confirm").val();
                var password_new = $("#password_new").val();
                var temp = '';
                if(password_current=="")
                    temp += "Vui lòng nhập mật khẩu hiện tại! <br/>";
                if(password_new=="")
                    temp += 'Vui lòng nhập mật khẩu mới! <br/>';

                if(password_confirm=="")
                    temp += 'Vui lòng nhập mật khẩu xác nhận! <br/>';

                if(password_confirm!=password_new)
                    temp += 'Mật khẩu xác nhận chưa đúng! <br/>';

                if(temp!='')
                {
                  $(".err_password").html(temp);
                    return false;
                }

                var email = $("#email").val();
                var url = $('base').attr('href') + 'index.php?route=user/user/update_password&token=<?php echo $this->session->data["token"]; ?>';
                $.ajax({
                    type: "post",
                    data:{'password':password_new },
                    url : url,
                    dataType : "html",
                    success : function(data){
                        $("#dialog-password").dialog("close");
                    }
                });
            }
            //$("#dialog").dialog("close");
        </script>


        <div style="display: none" id="dialog-acount">
            <span class="err_acount"></span>
            <table cellpadding="10" width="100%">
                <tr>
                    <td  style="width: 139px;">Họ và tên đệm</td>
                    <td><input class="form-control" type="text" name="" id="firstname" /></td>
                </tr>
                <tr>
                    <td>Tên</td>
                    <td><input class="form-control" type="text" name="" id="lastname" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input class="form-control" type="text" name="" id="email" /></td>
                </tr>
                <tr><td></td><td><button class="btn btn-primary" onclick="fcupdateacount();" >Cập nhật</button></td></tr>

            </table>
        </div>

        <div style="display: none"  id="dialog-password">

            <span class="err_password"></span>
            <table cellpadding="10" width="100%">
                <tr>
                    <td style="width: 139px;">Mật khẩu hiện tại</td>
                    <td><input class="form-control" type="password" name="" id="password_current" /></td>
                </tr>
                <tr>
                    <td>Mật khẩu mới</td>
                    <td><input class="form-control" type="password" name="" id="password_new" />

                    </td>
                </tr>
                <tr>
                    <td>Xác nhận mật khẩu</td>
                    <td><input class="form-control" type="password" name="" id="password_confirm" /></td>
                </tr>
                <tr><td></td><td><button class="btn btn-primary" onclick="fcupdatepass();" >Cập nhật</button></td></tr>
            </table>
        </div>