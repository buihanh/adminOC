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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>





  <div class="box">


      <div class="box-content">
         <div class="btn-toolbar pull-right">
          <div class="btn-group">
              <a href="<?php echo $insert; ?>" title="Thêm danh mục mới" class="btn btn-circle show-tooltip" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
              <a href="#" onclick="$('#form').submit();" title="Xóa danh mục" class="btn btn-circle show-tooltip" data-original-title="Delete selected"><i class="fa fa-trash-o"></i></a>
          </div>
      </div>
      <br><br>


    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">


          <div class="table-responsive">
              <table class="table table-advance">
                  <thead>
                    <th><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></th>
                    <th>
                        <?php if ($sort == 'username') { ?>
                            <a href="<?php echo $sort_username; ?>" class="<?php echo strtolower($order); ?>">Tên đăng nhập</a>
                        <?php } else { ?>
                             <a href="<?php echo $sort_username; ?>">Tên đăng nhập</a>
                        <?php } ?>
                    </th>
                    <th>
                        <?php if ($sort == 'status') { ?>
                            <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>">Trạng thái</a>
                        <?php } else { ?>
                            <a href="<?php echo $sort_status; ?>">Trạng thái</a>
                        <?php } ?>
                    </th>
                    <th>
                        <?php if ($sort == 'date_added') { ?>
                        <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>">Ngày tạo</a>
                        <?php } else { ?>
                        <a href="<?php echo $sort_date_added; ?>">Ngày tạo</a>
                        <?php } ?>
                    </th>
                    <th>Chức năng</th>
                  </thead>
                  <tbody>
                  <?php if ($users) { ?>
                      <?php foreach ($users as $user) {

                      if($this->user->isLogged()!=$user['user_id'] && $user['username']!="admin" )
                        {
                      ?>
                      <tr>
                          <td><?php if ($user['selected']) { ?>
                              <input type="checkbox" name="selected[]" value="<?php echo $user['user_id']; ?>" checked="checked" />
                              <?php } else { ?>
                              <input type="checkbox" name="selected[]" value="<?php echo $user['user_id']; ?>" />
                              <?php } ?></td>
                          <td class="left"><?php echo $user['username']; ?></td>
                          <td class="left"><?php echo $user['status']; ?></td>
                          <td class="left"><?php echo $user['date_added']; ?></td>
                          <td class="right"><?php foreach ($user['action'] as $action) { ?>
                              [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                              <?php } ?></td>
                      </tr>
                      <?php }
                         }
                      ?>
                      <?php } else { ?>
                      <tr>
                          <td class="center" colspan="5"><?php echo $text_no_results; ?></td>
                      </tr>
                  <?php

                  } ?>
                  </tbody>
              </table>
          </div>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?> 