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
    <div class="heading">
      <div class="buttons"><div class="btn-group">
              <a href="<?php echo $insert; ?>" title="Thêm danh mục mới" class="btn btn-circle show-tooltip" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
              <a href="#" onclick="$('#form').submit();" title="Xóa danh mục" class="btn btn-circle show-tooltip" data-original-title="Delete selected"><i class="fa fa-trash-o"></i></a>
          </div>
     </div>
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
          <div class="table-responsive">
              <table class="table table-advance">
                  <thead>
                    <th><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></th>
                    <th>
                        <?php if ($sort == 'pd.name') { ?>
                             <a href="<?php echo $sort_product; ?>" class="<?php echo strtolower($order); ?>">Tên sản phẩm</a>
                        <?php } else { ?>
                             <a href="<?php echo $sort_product; ?>">Tên sản phẩm</a>
                        <?php } ?>
                    </th>
                    <th>
                        <?php if ($sort == 'r.author') { ?>
                            <a href="<?php echo $sort_author; ?>" class="<?php echo strtolower($order); ?>">Người tạo</a>
                        <?php } else { ?>
                            <a href="<?php echo $sort_author; ?>">Người tạo</a>
                        <?php } ?>
                    </th>
                    <th>
                        <?php if ($sort == 'r.rating') { ?>
                        <a href="<?php echo $sort_rating; ?>" class="<?php echo strtolower($order); ?>">Điểm</a>
                        <?php } else { ?>
                        <a href="<?php echo $sort_rating; ?>">Điểm</a>
                        <?php } ?>
                    </th>
                  <th>
                      <?php if ($sort == 'r.status') { ?>
                      <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>">Trạng thái</a>
                      <?php } else { ?>
                      <a href="<?php echo $sort_status; ?>">Trạng thái</a>
                      <?php } ?>
                  </th>
                  <th>
                      <?php if ($sort == 'r.date_added') { ?>
                      <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>">Ngày tạo</a>
                      <?php } else { ?>
                      <a href="<?php echo $sort_date_added; ?>">Ngày tạo</a>
                      <?php } ?>
                  </th>
                  <th></th>
                  </thead>
                  <tbody>
                  <?php if ($reviews) { ?>
                  <?php foreach ($reviews as $review) { ?>
                  <tr>
                      <td><?php if ($review['selected']) { ?>
                          <input type="checkbox" name="selected[]" value="<?php echo $review['review_id']; ?>" checked="checked" />
                          <?php } else { ?>
                          <input type="checkbox" name="selected[]" value="<?php echo $review['review_id']; ?>" />
                          <?php } ?></td>
                      <td class="left"><?php echo $review['name']; ?></td>
                      <td class="left"><?php echo $review['author']; ?></td>
                      <td class="right"><?php echo $review['rating']; ?></td>
                      <td class="left"><?php echo $review['status']; ?></td>
                      <td class="left"><?php echo $review['date_added']; ?></td>
                      <td class="right"><?php foreach ($review['action'] as $action) { ?>
                           <a class="btn btn-sm show-tooltip" href="<?php echo $action['href']; ?>"><i class="fa fa-edit"></i></a>
                          <?php } ?></td>
                  </tr>
                  <?php } ?>
                  <?php } else { ?>
                  <tr>
                      <td class="center" colspan="7"><?php echo $text_no_results; ?></td>
                  </tr>
                  <?php } ?>
                  </tbody>
              </table>
          </div>



      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>