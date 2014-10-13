<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Login - FLATY Admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!--base css styles-->
    <link rel="stylesheet" href="view/flatty/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/flatty/assets/font-awesome/css/font-awesome.min.css">

    <!--page specific css styles-->

    <!--flaty css styles-->
    <link rel="stylesheet" href="view/flatty/css/flaty.css">
    <link rel="stylesheet" href="view/flatty/css/flaty-responsive.css">

    <link rel="shortcut icon" href="view/flatty/img/favicon.png">
</head>
<body class="login-page">

<!-- BEGIN Main Content -->
<div class="login-wrapper">
    <!-- BEGIN Login Form -->
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <h3>Đăng nhập hệ thống</h3>
        <hr/>
        <div class="form-group">
            <div class="controls">
                <input type="text"  name="username" value="<?php echo $username; ?>" placeholder="Tên đăng nhập" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <div class="controls">
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="Mật khẩu" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" value="remember" /> Ghi nhớ
                </label>
            </div>
        </div>
        <div class="form-group">
            <div class="controls">
                <button onclick="$('#form').submit();" type="button" class="btn btn-primary form-control">Đăng nhập</button>
            </div>
        </div>
        <hr/>
        <?php if ($forgotten) { ?>
        <br />
        <a href="<?php echo $forgotten; ?>">Quên mật khẩu!</a>
        <?php } ?>



        <?php if ($redirect) { ?>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        <?php } ?>
    </form>
    <!-- END Login Form -->


</div>
<!-- END Main Content -->

<!--basic scripts-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="view/flatty/assets/jquery/jquery-2.0.3.min.js"><\/script>')</script>
<script src="view/flatty/assets/bootstrap/js/bootstrap.min.js"></script>



<script type="text/javascript"><!--
    $('#form input').keydown(function(e) {
        if (e.keyCode == 13) {
            $('#form').submit();
        }
    });
    //--></script>

</body>
</html>
<?php  die(); ?>






<?php echo $header; ?>
<div id="content">
  <div class="box" style="width: 400px; min-height: 300px; margin-top: 40px; margin-left: auto; margin-right: auto;">
    <div class="heading">
      <h1><img src="view/image/lockscreen.png" alt="" /> <?php echo $text_login; ?></h1>
    </div>
    <div class="content" style="min-height: 150px; overflow: hidden;">
      <?php if ($success) { ?>
      <div class="success"><?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div class="warning"><?php echo $error_warning; ?></div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table style="width: 100%;">
          <tr>
            <td style="text-align: center;" rowspan="4"><img src="view/image/login.png" alt="<?php echo $text_login; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_username; ?><br />
              <input type="text" name="username" value="<?php echo $username; ?>" style="margin-top: 4px;" />
              <br />
              <br />
              <?php echo $entry_password; ?><br />
              <input type="password" name="password" value="<?php echo $password; ?>" style="margin-top: 4px;" />
              <?php if ($forgotten) { ?>
              <br />
              <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
              <?php } ?>
              </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td style="text-align: right;"><a onclick="$('#form').submit();" class="button"><?php echo $button_login; ?></a></td>
          </tr>
        </table>
        <?php if ($redirect) { ?>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        <?php } ?>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#form').submit();
	}
});
//--></script>
<?php echo $footer; ?>