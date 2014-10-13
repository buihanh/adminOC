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
  
  
  
  
  <div class="box-content">
	  <div class="btn-toolbar pull-right">
		  <div class="btn-group">
			  <a href="<?php echo $insert; ?>" title="Thêm danh mục mới" class="btn btn-circle show-tooltip" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
			  <a onclick="$('#form').attr('action', '<?php echo $copy; ?>'); $('#form').submit();" title="Copy" class="btn btn-circle show-tooltip" data-original-title="Copy"><?php // echo $button_copy; ?><i class="fa fa-files-o"></i></a>
			  <a href="#" onclick="$('#form').submit();" title="Xóa danh mục" class="btn btn-circle show-tooltip" data-original-title="Delete selected"><i class="fa fa-trash-o"></i></a>
		  </div>

	  </div>
	  <br><br>

  
  
  
	<form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
	<div class="table-responsive">
		<table class="table table-advance">
			<thead>
				<th style="width:18px"> <input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></th>
				<th><?php echo $column_image; ?></th>
				<th>
					<?php if ($sort == 'pd.name') { ?>
						<a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>">Tên sản phẩm</a>
					<?php } else { ?>
						<a href="<?php echo $sort_name; ?>">Tên sản phẩm</a>
					<?php } ?>
				</th>
				<th>
					<?php if ($sort == 'p.model') { ?>
						<a href="<?php echo $sort_model; ?>" class="<?php echo strtolower($order); ?>">Mẫu</a>
					<?php } else { ?>
						<a href="<?php echo $sort_model; ?>">Mẫu</a>
					<?php } ?>
				</th>
				<th>
					<?php if ($sort == 'p.price') { ?>
					<a href="<?php echo $sort_price; ?>" class="<?php echo strtolower($order); ?>">Giá</a>
					<?php } else { ?>
					<a href="<?php echo $sort_price; ?>">Giá</a>
					<?php } ?>
				</th>
				<th>
					<?php if ($sort == 'p.quantity') { ?>
					<a href="<?php echo $sort_quantity; ?>" class="<?php echo strtolower($order); ?>">Số lượng</a>
					<?php } else { ?>
					<a href="<?php echo $sort_quantity; ?>">Số lượng</a>
					<?php } ?>
				</th>
				<th>
					<?php if ($sort == 'p.status') { ?>
						<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>">Trạng thái</a>
					<?php } else { ?>
						<a href="<?php echo $sort_status; ?>">Trạng thái</a>
					<?php } ?>
				</th>
				<th>
					Chức năng
				</th>
			</thead>
			<tbody>
				  <tr class="filter">
					  <td></td>
					  <td></td>
					  <td><input  class="form-control" type="text" name="filter_name" value="<?php echo $filter_name; ?>" /></td>
					  <td><input  class="form-control" type="text" name="filter_model" value="<?php echo $filter_model; ?>" /></td>
					  <td align="left"><input  class="form-control" type="text" name="filter_price" value="<?php echo $filter_price; ?>" size="8"/></td>
					  <td align="right"><input  class="form-control" type="text" name="filter_quantity" value="<?php echo $filter_quantity; ?>" style="text-align: right;" /></td>
					  <td><select  class="form-control" name="filter_status">
						  <option value="*"></option>
						  <?php if ($filter_status) { ?>
						  <option value="1" selected="selected">Bật</option>
						  <?php } else { ?>
						  <option value="1">Bật</option>
						  <?php } ?>
						  <?php if (!is_null($filter_status) && !$filter_status) { ?>
						  <option value="0" selected="selected">Tắt</option>
						  <?php } else { ?>
						  <option value="0">Tắt</option>
						  <?php } ?>
						</select></td>
					  <td align="right"><a class="btn btn-primary" onclick="filter();" ><i class="fa fa-filter"></i> Tìm </a></td>
				</tr>
				
				
            <?php if ($products) { ?>
            <?php foreach ($products as $product) { ?>
					<tr>
					  <td style="text-align: center;"><?php if ($product['selected']) { ?>
						<input  type="checkbox" name="selected[]" value="<?php echo $product['product_id']; ?>" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="selected[]" value="<?php echo $product['product_id']; ?>" />
						<?php } ?></td>
					  <td class="center"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" style="padding: 1px; border: 1px solid #DDDDDD;" /></td>
					  <td class="left"><?php echo $product['name']; ?></td>
					  <td class="left"><?php echo $product['model']; ?></td>
					  <td class="left"><?php if ($product['special']) { ?>
						<span style="text-decoration: line-through;"><?php echo $product['price']; ?></span><br/>
						<span style="color: #b00;"><?php echo $product['special']; ?></span>
						<?php } else { ?>
						<?php echo $product['price']; ?>
						<?php } ?></td>
					  <td class="right"><?php if ($product['quantity'] <= 0) { ?>
						<span style="color: #FF0000;"><?php echo $product['quantity']; ?></span>
						<?php } elseif ($product['quantity'] <= 5) { ?>
						<span style="color: #FFA500;"><?php echo $product['quantity']; ?></span>
						<?php } else { ?>
						<span style="color: #008000;"><?php echo $product['quantity']; ?></span>
						<?php } ?></td>
					  <td class="left"><?php if($product['status']==1) echo 'Bật'; else echo 'Tắt'; ?></td>
					  
					  <td class="visible-md visible-lg">
						  <div class="btn-group">
							  <a data-original-title="Sửa" class="btn btn-sm show-tooltip" title="" href="<?php echo $product['href'];  ?>"><i class="fa fa-edit"></i></a>
							  <a data-original-title="Xóa" class="btn btn-sm btn-danger show-tooltip" title="" onclick="fcdelete(69)" href="#"><i class="fa fa-trash-o"></i></a>
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
<script type="text/javascript"><!--
function filter() {
	url = 'index.php?route=catalog/product&token=<?php echo $token; ?>';
	
	var filter_name = $('input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
	var filter_model = $('input[name=\'filter_model\']').attr('value');
	
	if (filter_model) {
		url += '&filter_model=' + encodeURIComponent(filter_model);
	}
	
	var filter_price = $('input[name=\'filter_price\']').attr('value');
	
	if (filter_price) {
		url += '&filter_price=' + encodeURIComponent(filter_price);
	}
	
	var filter_quantity = $('input[name=\'filter_quantity\']').attr('value');
	
	if (filter_quantity) {
		url += '&filter_quantity=' + encodeURIComponent(filter_quantity);
	}
	
	var filter_status = $('select[name=\'filter_status\']').attr('value');
	
	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}	

	location = url;
}
//--></script> 
<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		filter();
	}
});
//--></script> 
<script type="text/javascript"><!--
$('input[name=\'filter_name\']').autocomplete({
	delay: 500,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.product_id
					}
				}));
			}
		});
	}, 
	select: function(event, ui) {
		$('input[name=\'filter_name\']').val(ui.item.label);
						
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});

$('input[name=\'filter_model\']').autocomplete({
	delay: 500,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_model=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.model,
						value: item.product_id
					}
				}));
			}
		});
	}, 
	select: function(event, ui) {
		$('input[name=\'filter_model\']').val(ui.item.label);
						
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});
//--></script> 
<?php echo $footer; ?>