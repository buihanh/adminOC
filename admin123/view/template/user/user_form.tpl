<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
      <div class="buttons"><a class="btn btn-primary" onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a  class="btn btn-primary" href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
       <br/><br/>
    <div class="content">
      <form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username"><span class="required">*</span>Tên đăng nhập:</label>
              <div class="col-sm-6 col-lg-4 controls">
                  <input class="form-control"  type="text" name="username" value="<?php echo $username; ?>" />
              </div>
              <?php if ($error_username) { ?>
              <span class="error"><?php echo $error_username; ?></span>
              <?php } ?>
          </div>


          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username"><span class="required">*</span>Họ và tên đệm:</label>
              <div class="col-sm-6 col-lg-4 controls">

                  <input class="form-control" type="text" name="firstname" value="<?php echo $firstname; ?>" />
              </div>
              <?php if ($error_firstname) { ?>
              <span class="error"><?php echo $error_firstname; ?></span>
              <?php } ?>
          </div>

          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username"><span class="required">*</span>Tên:</label>
              <div class="col-sm-6 col-lg-4 controls">
                  <input class="form-control" type="text" name="lastname" value="<?php echo $lastname; ?>" />
              </div>
              <?php if ($error_lastname) { ?>
              <span class="error"><?php echo $error_lastname; ?></span>
              <?php } ?>
          </div>



          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username">Email:</label>
              <div class="col-sm-6 col-lg-4 controls">

                  <input class="form-control" type="text" name="email" value="<?php echo $email; ?>" />
              </div>
          </div>


          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username">Nhóm:</label>
              <div class="col-sm-6 col-lg-4 controls">

                  <select  class="form-control" name="user_group_id">
                      <?php foreach ($user_groups as $user_group) { ?>
                      <?php if ($user_group['user_group_id'] == $user_group_id) { ?>
                      <option value="<?php echo $user_group['user_group_id']; ?>" selected="selected"><?php echo $user_group['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?php echo $user_group['user_group_id']; ?>"><?php echo $user_group['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                  </select>

              </div>
          </div>
          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username">Mật khẩu:</label>
              <div class="col-sm-6 col-lg-4 controls">
                  <input   class="form-control" type="password" name="password" value="<?php echo $password; ?>"  />

              </div>
              <?php if ($error_password) { ?>
              <span class="error"><?php echo $error_password; ?></span>
              <?php  } ?>
          </div>

          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username">Xác nhận Mật khẩu:</label>
              <div class="col-sm-6 col-lg-4 controls">
                  <input class="form-control" type="password" name="confirm" value="<?php echo $confirm; ?>" />
              </div>
              <?php if ($error_confirm) { ?>
              <span class="error"><?php echo $error_confirm; ?></span>
              <?php  } ?>
          </div>
          <div class="form-group">
              <label class="col-sm-3 col-lg-2 control-label" for="username">Trạng thái:</label>
              <div class="col-sm-6 col-lg-4 controls">
                  <select class="form-control" name="status">
                      <?php if ($status) { ?>
                      <option value="0">Tắt</option>
                      <option value="1" selected="selected">Bật</option>
                      <?php } else { ?>
                      <option value="0" selected="selected">Tắt</option>
                      <option value="1">Bật</option>
                      <?php } ?>
                  </select>
              </div>

          </div>


      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 