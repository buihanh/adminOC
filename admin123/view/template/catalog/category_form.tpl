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
            <form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			   <div class="form-group">
				<label class="col-sm-3 col-lg-2 control-label" for="parent_id">Danh mục:</label>
				<div class="col-sm-6 col-lg-4 controls">
					<select  class="form-control" name="parent_id">
						<option  value="">Chọn</option>
						
						
						<?php
							foreach($category_sub as $category)
							{

								 if($category['parent_id']==0)
									{
										if($category_id != $category['category_id'])
										{
											$select = '';
											if($category['category_id']==$parent_id)
											$select = "selected='selected'";
											 echo "<option ".$select." value='".$category['category_id']."'>".$category['name']."</option>";
											 dequy($category['category_id'],$category_sub, $parent_id,$category_id);
										}
									}
							}
						?>
					</select>
				 <?php
					function dequy($id,$category,$parent_id,$category_id)
					{
						if (!empty($category)) {
							foreach ($category as $key => $post) {

								if($category_id != $post['category_id'])
								{
									if($post['parent_id']==$id)
									{
										$temp = '';
										if($post['category_id']==$parent_id)
										$temp = "selected='selected'";
										echo "<option  ".$temp." value='".$post['category_id']."'>--> ".$post['name']."</option>";
										dequy($post['category_id'],$category,$parent_id,$category_id);

									}
								}
							}

						}
					}
					?>
				   
				</div>
			</div>
			<div id="tab-general">
                <div id="languages" class="htabs">
                    <?php foreach ($languages as $language) { ?>
                    <a href="#language<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                    <?php } ?>
                </div>
                <?php foreach ($languages as $language) { ?>
                <div id="language<?php echo $language['language_id']; ?>">
					<div class="form-group">
						<label class="col-sm-3 col-lg-2 control-label" for="username"><span class="required">*</span>Tên danh mục:</label>
						<div class="col-sm-6 col-lg-4 controls">
							<input value="<?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['name'] : ''; ?>"  type="text" name="category_description[<?php echo $language['language_id']; ?>][name]" class="form-control" data-rule-required="true" data-rule-minlength="3" />
						</div>
						<?php if (isset($error_name[$language['language_id']])) { ?>
						<span class="error"><?php echo $error_name[$language['language_id']]; ?></span>
						<?php } ?>
					</div>
					<div class="form-group">
						<label class="col-sm-3 col-lg-2 control-label" for="meta_description">Mô tả:</label>
						<div class="col-sm-6 col-lg-4 controls">
							<textarea id="meta_description" name="category_description[<?php echo $language['language_id']; ?>][meta_description]"  class="form-control" cols="40" rows="5"><?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 col-lg-2 control-label" for="meta_keyword">Từ khóa seo:</label>
						<div class="col-sm-6 col-lg-4 controls">
							<textarea id="meta_keyword" name="category_description[<?php echo $language['language_id']; ?>][meta_keyword]" class="form-control"  cols="40" rows="5"><?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 col-lg-2 control-label" for="description">Mô tả:</label>
						<div class="col-sm-9 col-lg-9 controls">
							<textarea name="category_description[<?php echo $language['language_id']; ?>][description]" cols="90" rows="5" id="description<?php echo $language['language_id']; ?>"><?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['description'] : ''; ?></textarea>
						</div>
					</div>
				
				</div>
				<?php } ?>
			</div>
				
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label" for="description">Hình ảnh</label>
                    <div class="col-sm-9 col-lg-9 controls">
                       <div class="image"><img src="<?php echo $thumb; ?>" alt="" id="thumb" />
                  <input type="hidden" name="image" value="<?php echo $image; ?>" id="image" />
                  <br />
                  <a onclick="image_upload('image', 'thumb');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb').attr('src', '<?php echo $no_image; ?>'); $('#image').attr('value', '');"><?php echo $text_clear; ?></a></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 col-lg-2 control-label" for="description">Trạng thái:</label>
                    <div class="col-sm-2 col-lg-2 controls">
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

			

                <div style=" height: 0;    opacity: 0;    overflow: hidden;    width: 0;">
                    <input type="text" name="filter" value="" />

                    <?php $class = 'odd'; ?>
                    <?php foreach ($category_filters as $category_filter) { ?>
                    <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                    <div id="category-filter<?php echo $category_filter['filter_id']; ?>" class="<?php echo $class; ?>"><?php echo $category_filter['name']; ?><img src="view/image/delete.png" alt="" />
                        <input type="hidden" name="category_filter[]" value="<?php echo $category_filter['filter_id']; ?>" />
                    </div>
                    <?php } ?>

                    <?php $class = 'even'; ?>
                    <div class="<?php echo $class; ?>">
                        <?php if (in_array(0, $category_store)) { ?>
                        <input type="checkbox" name="category_store[]" value="0" checked="checked" />
                        <?php echo $text_default; ?>
                        <?php } else { ?>
                        <input type="checkbox" name="category_store[]" value="0" />
                        <?php echo $text_default; ?>
                        <?php } ?>
                    </div>
                    <?php foreach ($stores as $store) { ?>
                    <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                    <div class="<?php echo $class; ?>">
                        <?php if (in_array($store['store_id'], $category_store)) { ?>
                        <input type="checkbox" name="category_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                        <?php echo $store['name']; ?>
                        <?php } else { ?>
                        <input type="checkbox" name="category_store[]" value="<?php echo $store['store_id']; ?>" />
                        <?php echo $store['name']; ?>
                        <?php } ?>
                    </div>
                    <?php } ?>




                    <input type="text" name="keyword" value="<?php echo $keyword; ?>" />
                    <?php if ($top) { ?>
                    <input type="checkbox" name="top" value="1" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="top" value="1" />
                    <?php } ?>


                    <input type="text" name="column" value="<?php echo $column; ?>" size="1" />

                    <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" size="1" />

                    <select name="status">
                        <?php if ($status) { ?>
                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                        <option value="0"><?php echo $text_disabled; ?></option>
                        <?php } else { ?>
                        <option value="1"><?php echo $text_enabled; ?></option>
                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                    </select>
                    <select name="category_layout[0][layout_id]">
                        <option value=""></option>
                        <?php foreach ($layouts as $layout) { ?>
                        <?php if (isset($category_layout[0]) && $category_layout[0] == $layout['layout_id']) { ?>
                        <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                    <?php foreach ($stores as $store) { ?>

                    <select name="category_layout[<?php echo $store['store_id']; ?>][layout_id]">
                        <option value=""></option>
                        <?php foreach ($layouts as $layout) { ?>
                        <?php if (isset($category_layout[$store['store_id']]) && $category_layout[$store['store_id']] == $layout['layout_id']) { ?>
                        <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>

                    <?php } ?>
                </div>


                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a type="button" href="<?php echo $cancel; ?>" class="btn">Quay lại danh sách</a>
                    </div>
                </div>
            </form>
        </div>

  
  
  </div>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description<?php echo $language['language_id']; ?>', {
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
$('input[name=\'path\']').autocomplete({
	delay: 500,
	source: function(request, response) {		
		$.ajax({
			url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					'category_id':  0,
					'name':  '<?php echo $text_none; ?>'
				});
				
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.category_id
					}
				}));
			}
		});
	},
	select: function(event, ui) {
		$('input[name=\'path\']').val(ui.item.label);
		$('input[name=\'parent_id\']').val(ui.item.value);
		
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});
//--></script> 
<script type="text/javascript"><!--
// Filter
$('input[name=\'filter\']').autocomplete({
	delay: 500,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/filter/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.filter_id
					}
				}));
			}
		});
	}, 
	select: function(event, ui) {
		$('#category-filter' + ui.item.value).remove();
		
		$('#category-filter').append('<div id="category-filter' + ui.item.value + '">' + ui.item.label + '<img src="view/image/delete.png" alt="" /><input type="hidden" name="category_filter[]" value="' + ui.item.value + '" /></div>');

		$('#category-filter div:odd').attr('class', 'odd');
		$('#category-filter div:even').attr('class', 'even');
				
		return false;
	},
	focus: function(event, ui) {
      return false;
   }
});

$('#category-filter div img').live('click', function() {
	$(this).parent().remove();
	
	$('#category-filter div:odd').attr('class', 'odd');
	$('#category-filter div:even').attr('class', 'even');	
});
//--></script> 
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 

<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#languages a').tabs();
//--></script> 

<?php echo $footer; ?>