<?php

 echo $header; 

	$module_row=0; 

?>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div id="ajaxloading" class="hide">
	<div class="warning"><b>processing request...</b></div>
  </div>
  <div class="box">
    <div class="heading">
     
      <div class="buttons">
	  <a onclick="$('#form').submit();" class="btn btn-primary"><?php echo $button_save; ?></a>
	  <a onclick="__submit('save-edit')" class="btn btn-primary"><?php echo $this->language->get('button_save_edit'); ?></a>
	  <a onclick="__submit('save-new')" class="btn btn-primary"><?php echo $this->language->get('button_save_new'); ?></a> |
	  <a href="<?php echo $cancel; ?>" class="btn btn-primary"><?php echo $button_cancel; ?></a>

	</div>
	 
    </div>
	<br/>
    <div class="content">


    	 <div id="tab-contents">

	 		<div id="tab-manage-menus">	

			
			
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
					<input type="hidden" value="<?php echo $store_id;?>" name="megamenu[store_id]"/></br></br>
					<div class="megamenu">
						
						
						
						
			
			<div id="tab-contents">
				<div style=" height: 0;
    opacity: 0;
    overflow: hidden;
    width: 0;" id="tree-megamenu">
					
						<div class="menu_layout">
							<table cellpadding="10" class="form">
								<tr>
								  <td><?php echo $entry_layout; ?></td>
								  <td><select name="megamenubase_module[<?php echo $module_row; ?>][layout_id]">
									 <?php foreach ($layouts as $layout) { ?>
									  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
									  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
									  <?php } else { ?>
									  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
									  <?php } ?>
									  <?php } ?>
									</select></td>
								</tr>
								<tr>
								  <td><?php echo $entry_position; ?></td>
								  <td><select name="megamenubase_module[<?php echo $module_row; ?>][position]">
									  <?php foreach( $positions as $pos ) { ?>
									  <?php if ($module['position'] == $pos) { ?>
									  <option value="<?php echo $pos;?>" selected="selected"><?php echo $this->language->get('text_'.$pos); ?></option>
									  <?php } else { ?>
									  <option value="<?php echo $pos;?>"><?php echo $this->language->get('text_'.$pos); ?></option>
									  <?php } ?>
									  <?php } ?> 
									</select></td>
								</tr>
								<tr>
								  <td><?php echo $entry_status; ?></td>
								  <td><select name="megamenubase_module[<?php echo $module_row; ?>][status]">
									  <?php if ($module['status']) { ?>
									  <option value="1" selected="selected"><?php echo "Bật"; ?></option>
									  <option value="0"><?php echo "Tắt"; ?></option>
									  <?php } else { ?>
									  <option value="1"><?php echo "Bật"; ?></option>
									  <option value="0" selected="selected"><?php echo "Tắt"; ?></option>
									  <?php } ?>
									</select></td>
								</tr>
								<tr>
								  <td><?php echo $entry_sort_order; ?></td>
								  <td><input type="text" name="megamenubase_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
								</tr>



							</table>
						</div>
					
					
					
				</div>
				
				
				<div id="megamenu-form">
					<div class="megamenu-form">
					
					<div class="tree-megamenu">
						<h3>Quản lý cây menu</h3>
						<?php echo $tree; ?>
						<input class="btn btn-primary" type="button" name="serialize" id="serialize" value="Update" />
						
						<p class="note"><i>Để sắp xếp các đơn đặt hàng hoặc cập nhật cha-con, bạn drap và thả dự kiến ​​sẽ trình đơn, sau đó nhấn nút để cập nhật để tiết kiệm</i></p>
					</div>
					
					
					
						<div id="megamenu-form"  class="abcmenu" >
							<?php require( "megamenubase_form.tpl" );?>
						</div>


					</div>
				</div>
				
				<div style="clear:both;"></div>
				
			</div>	
						
						
						
						
						
						
						
						
						</div>
					</div>
					<input type="hidden" value="" name="save_mode" id="save_mode"/>
				 </form>
    	 	</div>
    	 </div>
      		
    </div>
  </div>
</div>
<script type="text/javascript"><!--


 $( "#tabss a" ).tabs();


$('#grouptabs a').click( function(){
	$.cookie("megaactived_tab", $(this).attr("href") );
} );

if( $.cookie("megaactived_tab") !="undefined" ){
	$('#grouptabs a').each( function(){
		if( $(this).attr("href") ==  $.cookie("megaactived_tab") ){
			$(this).click();
			return ;
		}
	} );
	
}


$("#btn-guide").click( function(){
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="'+$(this).attr('href')+'" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: 'Guide',
		close: function (event, ui) {},	
		bgiframe: false,
		width: 940,
		height: 500,
		resizable: false,
		modal: true
	});
	return false;
} );
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
 <script type="text/javascript" class="source below">
 function __submit( m ){
	$("#save_mode").val( m );
	$('#form').submit();
 }
	$('ol.sortable').nestedSortable({
			forcePlaceholderSize: true,
			handle: 'div',
			helper:	'clone',
			items: 'li',
			opacity: .6,
			placeholder: 'placeholder',
			revert: 250,
			tabSize: 25,
			tolerance: 'pointer',
			toleranceElement: '> div',
			maxLevels: 4,

			isTree: true,
			expandOnHover: 700,
			startCollapsed: true
		});
	
	$('#serialize').click(function(){
			var serialized = $('ol.sortable').nestedSortable('serialize');
			 $.ajax({
			async : false,
			type: 'POST',
			dataType:'json',
			url: "<?php echo str_replace("&amp;","&",$updateTree);?>",
			data : serialized, 
			success : function (r) {
				 
			}
		});
	})
	/*
	$(".quickedit").click( function(){
		
		var id = $(this).attr("rel").replace("id_","");
		$.post( "<?php echo str_replace("&amp;","&",$actionGetInfo);?>", {
			"id":id,	
			"rand":Math.random()},
			function(data){
				$("#megamenu-form").html( data );
			});
	} ); */
	$(".quickdel").click( function(){
		if( confirm("<?php echo $this->language->get("message_delete");?>") ){
			var id = $(this).attr("rel").replace("id_","");
			window.location.href="<?php echo str_replace("&amp;","&",$actionDel);?>&id="+id;
		}
	} );
	$(document).ajaxSend(function() {
		$("#ajaxloading").show();
	});
	$(document).ajaxComplete(function() {
		$("#ajaxloading").hide();
	});
</script>
<script type="text/javascript">
$("a.btn-action-widget").click( function(){  
	$('#dialog').remove();
	var _link = $(this).attr('href');
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="'+_link+'" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $this->language->get("text_add_widget"); ?>',
		close: function (event, ui) {
			location.reload();
		},	
		bgiframe: false,
		width: 980,
		height: 600,
		resizable: false,
		modal: true
	});
	return false;	
} );
</script>
<?php echo $footer; ?>
