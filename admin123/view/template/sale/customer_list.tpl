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
  
  
	<div class="btn-toolbar pull-right">
	  <div class="btn-group">
			<a onclick="$('form').attr('action', '<?php echo $approve; ?>'); $('form').submit();" class="btn btn-circle show-tooltip" >Phê duyệt</a>
			<a href="<?php echo $insert; ?>" title="Thêm danh mục mới" class="btn btn-circle show-tooltip" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
			<a href="#" onclick="$('#form').submit();" title="Xóa danh mục" class="btn btn-circle show-tooltip" data-original-title="Delete selected"><i class="fa fa-trash-o"></i></a>
	  </div>
	</div>
	<br><br>
	
	
    <div class="content">
      <form action="" method="post" enctype="multipart/form-data" id="form">
	  
		<div class="table-responsive">
			<table class="table table-advance">
				<thead>
					<th><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></th>
					<th>
						<?php if ($sort == 'name') { ?>
							<a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>">Tên khách hàng</a>
						<?php } else { ?>
							<a href="<?php echo $sort_name; ?>">Tên khách hàng</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'c.email') { ?>
							<a href="<?php echo $sort_email; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_email; ?></a>
						<?php } else { ?>
							<a href="<?php echo $sort_email; ?>"><?php echo $column_email; ?></a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'customer_group') { ?>
							<a href="<?php echo $sort_customer_group; ?>" class="<?php echo strtolower($order); ?>">Nhóm</a>
						<?php } else { ?>
							<a href="<?php echo $sort_customer_group; ?>">Nhóm</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'c.status') { ?>
							<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>">Trạng thái</a>
						<?php } else { ?>
							<a href="<?php echo $sort_status; ?>">Trạng thái</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'c.approved') { ?>
							<a href="<?php echo $sort_approved; ?>" class="<?php echo strtolower($order); ?>">Phê duy</a>
						<?php } else { ?>
							<a href="<?php echo $sort_approved; ?>">Phê duyệt</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'c.ip') { ?>
							<a href="<?php echo $sort_ip; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_ip; ?></a>
						<?php } else { ?>
							<a href="<?php echo $sort_ip; ?>"><?php echo $column_ip; ?></a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'c.date_added') { ?>
							<a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>">Ngày tạo</a>
						<?php } else { ?>
							<a href="<?php echo $sort_date_added; ?>">Ngày tạo</a>
						<?php } ?>
					</th>
					<th>
						Đăng nhập
					</th>
					<th>Chức năng</th>
				</thead>
				<tbody>
					 <tr class="filter">
              <td></td>
              <td><input  class="form-control" type="text" name="filter_name" value="<?php echo $filter_name; ?>" /></td>
              <td><input class="form-control" type="text" name="filter_email" value="<?php echo $filter_email; ?>" /></td>
              <td><select class="form-control" name="filter_customer_group_id">
                  <option value="*"></option>
                  <?php foreach ($customer_groups as $customer_group) { ?>
                  <?php if ($customer_group['customer_group_id'] == $filter_customer_group_id) { ?>
                  <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td><select class="form-control" name="filter_status">
                  <option value="*"></option>
                  <?php if ($filter_status) { ?>
                  <option value="1" selected="selected"><?php echo "Bật"; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo "Bật"; ?></option>
                  <?php } ?>
                  <?php if (!is_null($filter_status) && !$filter_status) { ?>
                  <option value="0" selected="selected"><?php echo "Tắt"; ?></option>
                  <?php } else { ?>
                  <option value="0"><?php echo "Tắt"; ?></option>
                  <?php } ?>
                </select></td>
              <td><select class="form-control" name="filter_approved">
                  <option value="*"></option>
                  <?php if ($filter_approved) { ?>
                  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_yes; ?></option>
                  <?php } ?>
                  <?php if (!is_null($filter_approved) && !$filter_approved) { ?>
                  <option value="0" selected="selected"><?php echo $text_no; ?></option>
                  <?php } else { ?>
                  <option value="0"><?php echo $text_no; ?></option>
                  <?php } ?>
                </select></td>
              <td><input class="form-control" type="text" name="filter_ip" value="<?php echo $filter_ip; ?>" /></td>
              <td><input  class="form-control" type="text" name="filter_date_added" value="<?php echo $filter_date_added; ?>" size="12" id="date" /></td>
              <td></td>
              <td align="right"><a onclick="filter();" class="btn btn-primary"  ><i class="fa fa-filter"></i>  Lọc</a></td>
            </tr>
            <?php if ($customers) { ?>
            <?php foreach ($customers as $customer) { ?>
            <tr>
              <td><?php if ($customer['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $customer['customer_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $customer['customer_id']; ?>" />
                <?php } ?></td>
              <td class="left"><?php echo $customer['name']; ?></td>
              <td class="left"><?php echo $customer['email']; ?></td>
              <td class="left"><?php echo $customer['customer_group']; ?></td>
              <td class="left"><?php echo $customer['status']; ?></td>
              <td class="left"><?php echo $customer['approved']; ?></td>
              <td class="left"><?php echo $customer['ip']; ?></td>
              <td class="left"><?php echo $customer['date_added']; ?></td>
              <td   class="left"><select style="padding-right: 0px;width: 100px;" class="form-control"   onchange="((this.value !== '') ? window.open('index.php?route=sale/customer/login&token=<?php echo $token; ?>&customer_id=<?php echo $customer['customer_id']; ?>&store_id=' + this.value) : null); this.value = '';">
                  <option value="">--Chọn--</option>
                  <option value="0">Mặc định</option>
                  <?php foreach ($stores as $store) { ?>
                  <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
                  <?php } ?>
                </select></td>
			<td class="visible-md visible-lg">
				  <div class="btn-group">
					  <a href="http://local.congty/admin123/index.php?route=catalog/category/update&amp;token=56d84a2dbfaadb5963f368c18e16abe0&amp;category_id=69" title="" class="btn btn-sm show-tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a>
					  <a href="#" onclick="fcdelete(69)" title="" class="btn btn-sm btn-danger show-tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
				  </div>
			  </td>
				  
				  
         
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="10"><?php echo $text_no_results; ?></td>
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
<script type="text/javascript"><!--
function filter() {
	url = 'index.php?route=sale/customer&token=<?php echo $token; ?>';
	
	var filter_name = $('input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
	var filter_email = $('input[name=\'filter_email\']').attr('value');
	
	if (filter_email) {
		url += '&filter_email=' + encodeURIComponent(filter_email);
	}
	
	var filter_customer_group_id = $('select[name=\'filter_customer_group_id\']').attr('value');
	
	if (filter_customer_group_id != '*') {
		url += '&filter_customer_group_id=' + encodeURIComponent(filter_customer_group_id);
	}	
	
	var filter_status = $('select[name=\'filter_status\']').attr('value');
	
	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status); 
	}	
	
	var filter_approved = $('select[name=\'filter_approved\']').attr('value');
	
	if (filter_approved != '*') {
		url += '&filter_approved=' + encodeURIComponent(filter_approved);
	}	
	
	var filter_ip = $('input[name=\'filter_ip\']').attr('value');
	
	if (filter_ip) {
		url += '&filter_ip=' + encodeURIComponent(filter_ip);
	}
		
	var filter_date_added = $('input[name=\'filter_date_added\']').attr('value');
	
	if (filter_date_added) {
		url += '&filter_date_added=' + encodeURIComponent(filter_date_added);
	}
	
	location = url;
}
//--></script>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script>
<?php echo $footer; ?> 