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
    <div class="content">
	
		<div class="btn-toolbar pull-right">
		  <div class="btn-group">
				<a onclick="$('#form').attr('action', '<?php echo $invoice; ?>'); $('#form').attr('target', '_blank'); $('#form').submit();" class="btn btn-circle show-tooltip"><i class="fa fa-print"></i></a>
				
			  <a href="<?php echo $insert; ?>" title="Thêm danh mục mới" class="btn btn-circle show-tooltip" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
				
			  <a href="#" onclick="$('#form').submit();" title="Xóa danh mục" class="btn btn-circle show-tooltip" data-original-title="Delete selected"><i class="fa fa-trash-o"></i></a>
		  </div>

		</div>
		<br><br>
	
	
      <form action="" method="post" enctype="multipart/form-data" id="form">
	  
		  <div class="table-responsive">
			<table class="table table-advance">
				<thead>
					<th><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></th>
					<th>
						<?php if ($sort == 'o.order_id') { ?>
							<a href="<?php echo $sort_order; ?>" class="<?php echo strtolower($order); ?>">ID</a>
						<?php } else { ?>
							<a href="<?php echo $sort_order; ?>">ID</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'customer') { ?>
							<a href="<?php echo $sort_customer; ?>" class="<?php echo strtolower($order); ?>">Khách hàng</a>
						<?php } else { ?>
							<a href="<?php echo $sort_customer; ?>">Khách hàng</a>
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
						<?php if ($sort == 'o.total') { ?>
							<a href="<?php echo $sort_total; ?>" class="<?php echo strtolower($order); ?>">Tổng</a>
						<?php } else { ?>
							<a href="<?php echo $sort_total; ?>">Tổng</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'o.date_added') { ?>
							<a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>">Ngày đặt</a>
						<?php } else { ?>
							<a href="<?php echo $sort_date_added; ?>">Ngày đặt</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'o.date_modified') { ?>
							<a href="<?php echo $sort_date_modified; ?>" class="<?php echo strtolower($order); ?>">Ngày sửa</a>
						<?php } else { ?>
							<a href="<?php echo $sort_date_modified; ?>">Ngày sửa</a>
						<?php } ?>
					</th>
					<th>
						Chức năng
					</th>
				</thead>
				<tbody>
					 <tr class="filter">
					  <td></td>
					  <td align="right"><input class="form-control" type="text" name="filter_order_id" value="<?php echo $filter_order_id; ?>" size="4" style="text-align: right;" /></td>
					  <td><input class="form-control" type="text" name="filter_customer" value="<?php echo $filter_customer; ?>" /></td>
					  <td><select class="form-control" name="filter_order_status_id">
						  <option value="*"></option>
						  <?php if ($filter_order_status_id == '0') { ?>
						  <option value="0" selected="selected">Đơn đặt hàng bị mất tích</option>
						  <?php } else { ?>
						  <option value="0">Đơn đặt hàng bị mất tích</option>
						  <?php } ?>
						  <?php foreach ($order_statuses as $order_status) { ?>
						  <?php if ($order_status['order_status_id'] == $filter_order_status_id) { ?>
						  <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
						  <?php } else { ?>
						  <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
						  <?php } ?>
						  <?php } ?>
						</select></td>
					  <td align="right"><input class="form-control" type="text" name="filter_total" value="<?php echo $filter_total; ?>" size="4" style="text-align: right;" /></td>
					  <td><input  type="text" name="filter_date_added" value="<?php echo $filter_date_added; ?>" size="12" class="date form-control" /></td>
					  <td><input  type="text" name="filter_date_modified" value="<?php echo $filter_date_modified; ?>" size="12" class="date form-control" /></td>
					  <td align="right">
						<a class="btn btn-primary" onclick="filter();"><i class="fa fa-filter"></i> Tìm</a></td>
					</tr>
					<?php if ($orders) { ?>
					<?php foreach ($orders as $order) { ?>
					<tr>
					  <td style="text-align: center;"><?php if ($order['selected']) { ?>
						<input type="checkbox" name="selected[]" value="<?php echo $order['order_id']; ?>" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="selected[]" value="<?php echo $order['order_id']; ?>" />
						<?php } ?></td>
					  <td class="right"><?php echo $order['order_id']; ?></td>
					  <td class="left"><?php echo $order['customer']; ?></td>
					  <td class="left"><?php echo $order['status']; ?></td>
					  <td class="right"><?php echo $order['total']; ?></td>
					  <td class="left"><?php echo $order['date_added']; ?></td>
					  <td class="left"><?php echo $order['date_modified']; ?></td>
					  <td class="visible-md visible-lg">
						  <div class="btn-group">
							<a href="<?php echo $order['info']; ?>" title="Chi tiết" class="btn btn-sm show-tooltip" data-original-title="Chi tiết"><i class="fa fa-file-o"></i></a>
							<a href="<?php echo $order['href']; ?>" title="Sửa" class="btn btn-sm show-tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a>
							<a href="#" onclick="fcdelete(69)" title="" class="btn btn-sm btn-danger show-tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
						  </div>
					  </td>
					</tr>
					<?php } ?>
					<?php } else { ?>
					<tr>
					  <td class="center" colspan="8"><?php echo $text_no_results; ?></td>
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
	url = 'index.php?route=sale/order&token=<?php echo $token; ?>';
	
	var filter_order_id = $('input[name=\'filter_order_id\']').attr('value');
	
	if (filter_order_id) {
		url += '&filter_order_id=' + encodeURIComponent(filter_order_id);
	}
	
	var filter_customer = $('input[name=\'filter_customer\']').attr('value');
	
	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}
	
	var filter_order_status_id = $('select[name=\'filter_order_status_id\']').attr('value');
	
	if (filter_order_status_id != '*') {
		url += '&filter_order_status_id=' + encodeURIComponent(filter_order_status_id);
	}	

	var filter_total = $('input[name=\'filter_total\']').attr('value');

	if (filter_total) {
		url += '&filter_total=' + encodeURIComponent(filter_total);
	}	
	
	var filter_date_added = $('input[name=\'filter_date_added\']').attr('value');
	
	if (filter_date_added) {
		url += '&filter_date_added=' + encodeURIComponent(filter_date_added);
	}
	
	var filter_date_modified = $('input[name=\'filter_date_modified\']').attr('value');
	
	if (filter_date_modified) {
		url += '&filter_date_modified=' + encodeURIComponent(filter_date_modified);
	}
				
	location = url;
}
//--></script>  
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		filter();
	}
});
//--></script> 
<script type="text/javascript"><!--
$.widget('custom.catcomplete', $.ui.autocomplete, {
	_renderMenu: function(ul, items) {
		var self = this, currentCategory = '';
		
		$.each(items, function(index, item) {
			if (item.category != currentCategory) {
				ul.append('<li class="ui-autocomplete-category">' + item.category + '</li>');
				
				currentCategory = item.category;
			}
			
			self._renderItem(ul, item);
		});
	}
});

$('input[name=\'filter_customer\']').catcomplete({
	delay: 500,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=sale/customer/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						category: item.customer_group,
						label: item.name,
						value: item.customer_id
					}
				}));
			}
		});
	}, 
	select: function(event, ui) {
		$('input[name=\'filter_customer\']').val(ui.item.label);
						
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});
//--></script> 
<?php echo $footer; ?>