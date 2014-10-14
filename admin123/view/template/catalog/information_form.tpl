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

	 <div class="box-content">
      <form  class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	  
		<div class="form-group">
			<label class="col-sm-3 col-lg-2 control-label" for="tag"><span class="required">*</span> Tiêu đề:</label>
			<div class="col-sm-9 col-lg-9 controls">
				<input class="form-control"  type="text" name="information_description[1][title]" size="100" value="<?php echo isset($information_description[1]) ? $information_description[1]['title'] : ''; ?>" />
                  <?php if (isset($error_title[1])) { ?>
                  <span class="error"><?php echo $error_title[1]; ?></span>
                  <?php } ?>
				  
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 col-lg-2 control-label" for="tag"><span class="required">*</span> Mô tả:</label>
			<div class="col-sm-9 col-lg-9 controls">
					<textarea name="information_description[1][description]" id="description1"><?php echo isset($information_description[1]) ? $information_description[1]['description'] : ''; ?></textarea>
				  <?php if (isset($error_description[1])) { ?>
				  <span class="error"><?php echo $error_description[1]; ?></span>
				  <?php } ?>
			</div>
		</div>
	
	
		<div class="form-group">
			<label class="col-sm-3 col-lg-2 control-label" for="tag">Từ khóa seo:</label>
			<div class="col-sm-6 col-lg-4 controls">
				<input class="form-control" type="text" name="keyword" value="<?php echo $keyword; ?>" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 col-lg-2 control-label" for="tag">Vị trí dưới:</label>
			<div class="col-sm-6 col-lg-4 controls">
				<?php if ($bottom) { ?>
                <input type="checkbox" name="bottom" value="1" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="bottom" value="1" />
                <?php } ?>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 col-lg-2 control-label" for="tag">Thứ tự:</label>
			<div class="col-sm-6 col-lg-4 controls">
				<input class="form-control" type="text" name="sort_order" value="<?php echo $sort_order; ?>" size="1" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 col-lg-2 control-label" for="tag">Trạng thái:</label>
			<div class="col-sm-6 col-lg-4 controls">
				<select class="form-control" name="status">
				  <?php if ($status) { ?>
				  <option value="1" selected="selected">Bật</option>
				  <option value="0">Tắt</option>
				  <?php } else { ?>
				  <option value="1">Bật</option>
				  <option value="0" selected="selected">Tắt</option>
				  <?php } ?>
				</select>
			</div>
		</div>
		<div style="clear:both"></div>	
			
			
		<div style="opacity: 0; height:0px; width:0px">
			<div id="tab-data">
			  <table class="form">
				<tr>
				  <td><?php echo $entry_store; ?></td>
				  <td><div class="scrollbox">
					  <?php $class = 'even'; ?>
					  <div class="<?php echo $class; ?>">
						<?php if (in_array(0, $information_store)) { ?>
						<input type="checkbox" name="information_store[]" value="0" checked="checked" />
						<?php echo $text_default; ?>
						<?php } else { ?>
						<input type="checkbox" name="information_store[]" value="0" />
						<?php echo $text_default; ?>
						<?php } ?>
					  </div>
					  <?php foreach ($stores as $store) { ?>
					  <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
					  <div class="<?php echo $class; ?>">
						<?php if (in_array($store['store_id'], $information_store)) { ?>
						<input type="checkbox" name="information_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
						<?php echo $store['name']; ?>
						<?php } else { ?>
						<input type="checkbox" name="information_store[]" value="<?php echo $store['store_id']; ?>" />
						<?php echo $store['name']; ?>
						<?php } ?>
					  </div>
					  <?php } ?>
					</div></td>
				</tr>
			   
			  </table>
			</div>
			<div id="tab-design">
			  <table class="list">
				<thead>
				  <tr>
					<td class="left"><?php echo $entry_store; ?></td>
					<td class="left"><?php echo $entry_layout; ?></td>
				  </tr>
				</thead>
				<tbody>
				  <tr>
					<td class="left"><?php echo $text_default; ?></td>
					<td class="left"><select name="information_layout[0][layout_id]">
						<option value=""></option>
						<?php foreach ($layouts as $layout) { ?>
						<?php if (isset($information_layout[0]) && $information_layout[0] == $layout['layout_id']) { ?>
						<option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
						<?php } ?>
						<?php } ?>
					  </select></td>
				  </tr>
				</tbody>
				<?php foreach ($stores as $store) { ?>
				<tbody>
				  <tr>
					<td class="left"><?php echo $store['name']; ?></td>
					<td class="left"><select name="information_layout[<?php echo $store['store_id']; ?>][layout_id]">
						<option value=""></option>
						<?php foreach ($layouts as $layout) { ?>
						<?php if (isset($information_layout[$store['store_id']]) && $information_layout[$store['store_id']] == $layout['layout_id']) { ?>
						<option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
						<?php } ?>
						<?php } ?>
					  </select></td>
				  </tr>
				</tbody>
				<?php } ?>
			  </table>
			</div>
		  </div>
	  </form>
	</div>
  </div>
</div>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description1', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#languages a').tabs(); 
//--></script> 
<?php echo $footer; ?>