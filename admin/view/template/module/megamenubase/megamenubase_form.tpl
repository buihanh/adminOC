<?php


if( $menu ): 
$module_row= 'ss';
?>
<?php if( $menu['megamenu_id'] > 0 ) { ?>
<h3><?php echo sprintf($text_edit_menu, $menu['title'], $menu['megamenu_id']);?></h3>
<?php } else { ?>
<h3><?php echo $text_create_new;?></h3>
<?php } ?>
<div>
<?php 
// echo '<pre>'.print_r( $menu_description,1 ); die;
?>



		  
	<h4>Menu Type</h4>
	<input type="hidden" name="megamenu[item]" value="<?php echo $menu['item'];?>" />
	<table class="form">
		<tr>
			<td><?php echo $this->language->get('entry_publish');?></td>
				
			<td>
				<select type="list" name="megamenu[published]" >
					<?php foreach( $yesno as $key => $val ){ ?>
					<option value="<?php echo $key;?>" <?php if( $key==$menu['published']){ ?> selected="selected"<?php } ?>><?php echo $val; ?></option>
					<?php } ?>
				</select>
 			</td>
		</tr>
		<tr>
			<td><?php echo $this->language->get('entry_type');?></td>
				
			<td>
				<select onclick="changtype();" name="megamenu[type]" id="megamenutype">
					<?php foreach(  $megamenutypes as $mt => $val ){ ?>
					<option value="<?php echo $mt; ?>" <?php if($mt == $menu['type']) {?> selected="selected" <?php } ?>><?php echo $val; ?></option>
					<?php } ?>
				</select>
 			</td>
		</tr>
		<tr id="megamenutype-url" class="megamenutype">
			<td><?php echo $this->language->get('entry_url');?></td>
			<td>
				<input type="text" name="megamenu[url]" value="<?php echo $menu['url'];?>" size="50"/>
			</td>
		</tr>
		<tr id="megamenutype-category" class="megamenutype">
			<td><?php echo $this->language->get('entry_category');?></td>
			<td>
				<input type="text" name="path" value="<?php echo $menu['megamenu-category'];?>" size="100" />
                <i><?php echo $this->language->get('text_explain_input_auto');?></i>
			</td>
		</tr>
		<tr id="megamenutype-product" class="megamenutype">
			<td><?php echo $this->language->get('entry_product');?></td>
			<td>
				<input type="text" name="megamenu-product" value="<?php echo $menu['megamenu-product'];?>" size="50"/>
				<i><?php echo $this->language->get('text_explain_input_auto');?></i>
			</td>
		</tr>
		<tr id="megamenutype-manufacturer" class="megamenutype">
			<td><?php echo $this->language->get('entry_manufacturer');?></td>
			<td>
				<input type="text" name="megamenu-manufacturer" value="<?php echo $menu['megamenu-manufacturer'];?>" size="50"/>
				<i><?php echo $this->language->get('text_explain_input_auto');?></i>
			</td>
		</tr>
		
		<!--- Viet them bglog -->
		<tr id="megamenutype-blog" class="megamenutype">
			<td><?php echo "Blog"; ?></td>
			<td>
				
			
				<?php  echo $blogs; ?>
				
			</td>
		</tr>
		
		<!--- Viet them bglog -->
		<tr id="megamenutype-information" class="megamenutype">
			<td><?php echo $this->language->get('entry_information');?></td>
			<td>
				
				<select onclick="changeinformation(this.value);" type="text" name="megamenu-information" id="megamenu-information">
					<?php foreach( $informations as $info ){ ?>
					<option value="<?php echo $info['information_id'];?>" <?php if( $menu['megamenu-information'] == $info['information_id']){ ?> selected="selected" <?php } ?>><?php echo $info['title'];?></option>
					<?php } ?>
				</select>
				
			</td>
		</tr>
		
		
		
		
		<tr id="megamenutype-html" class="megamenutype">
			<td><?php echo $this->language->get('entry_html');?></td>
			<td>
				<textarea type="text" name="megamenu[content_text]"  size="50"><?php echo $menu['content_text'];?></textarea>
				<i><?php echo $this->language->get('text_explain_input_html');?></i>
			</td>
		</tr>
	</table>






	<h4>Menu Information</h4>
	 <div id="language-<?php echo $module_row; ?>" class="htabs">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab-language-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
				<td>Title</td>
				<td><input class="cltitle" id="title_<?php echo $language['language_id'];?>" name="megamenu_description[<?php echo $language['language_id'];?>][title]" value="<?php echo (isset($menu_description[$language['language_id']]['title'])?$menu_description[$language['language_id']]['title']:"" );?>"/></td>
              </tr>
			   <tr>
				<td><?php echo $this->language->get('entry_description');?></td>
				<td>
					<textarea class="cldescription" id="description_<?php echo $language['language_id'];?>" name="megamenu_description[<?php echo $language['language_id'];?>][description]" value=""><?php echo (isset($menu_description[$language['language_id']]['description'])?$menu_description[$language['language_id']]['description']:"");?></textarea>
				</td>
              </tr>
            </table>
          </div>
		  
		  
		  
          <?php } ?>
		  
		  
		  
		  




	
	<h4>Menu Params</h4>	  
	 <table class="form">
		<tr>
			<td><?php echo $this->language->get('entry_parent_id');?></td>
				
			<td>
				<?php echo $menus;?>
 			</td>
		</tr>
		 <tr>
              <td><?php echo $entry_image;  ?></td>
              <td valign="top"><div class="image"><img src="<?php echo $thumb; ?>" alt="" id="thumb" />
                  <input type="hidden" name="megamenu[image]" value="<?php echo $menu['image']; ?>" id="image" />
                  <br />
                  <a onclick="image_upload('image', 'thumb');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb').attr('src', '<?php echo $no_image; ?>'); $('#image').attr('value', '');"><?php echo $text_clear; ?></a></div></td>
            </tr>
		<tr>
			<td><?php echo $this->language->get('entry_menuclass');?></td>
				
			<td>
				<input type="text" name="megamenu[menu_class]" value="<?php echo $menu['menu_class']?>"/>
				
 			</td>
		</tr>	
		<tr>
			<td><?php echo $this->language->get('entry_showtitle');?></td>
				
			<td>
				<select type="list" name="megamenu[show_title]" >
					<?php foreach( $yesno as $key => $val ){ ?>
					<option value="<?php echo $key;?>" <?php if( $key==$menu['show_title']){ ?> selected="selected"<?php } ?>><?php echo $val; ?></option>
					<?php } ?>
				</select>
 			</td>
		</tr>
		<tr>
			<td><?php echo $this->language->get('entry_isgroup');?></td>
				
			<td>
				<select type="list" name="megamenu[is_group]" value="">
					<?php foreach( $yesno as $key => $val ){ ?>
					<option value="<?php echo $key;?>" <?php if( $key==$menu['is_group']){ ?> selected="selected"<?php } ?>><?php echo $val; ?></option>
					<?php } ?>
				</select>
				<i><?php echo $this->language->get('text_explain_group');?></i>
 			</td>
		</tr>
		<tr style="display:none">
			<td><?php echo $this->language->get('entry_iscontent');?></td>
			<td>
				<select type="list" name="megamenu[is_content]">
					<?php foreach( $yesno as $key => $val ){ ?>
					<option value="<?php echo $key;?>" <?php if( $key==$menu['is_content']){ ?> selected="selected"<?php } ?>><?php echo $val; ?></option>
					<?php } ?>
				</select>
 			</td>
		</tr>
		
		<tr>
			<td>
				<?php echo $this->language->get("entry_columns");?>
			</td>
				
			<td>
				<input type="text" name="megamenu[colums]" value="<?php echo $menu['colums']?>"/>
				<i><?php echo $this->language->get('text_explain_columns');?></i>
 			</td>
		</tr>
		
		
		 
		<tr>
			<td>
			<?php echo $this->language->get("entry_detail_columns");?>	
			</td>
				
			<td>
				<textarea type="text" name="megamenu[submenu_colum_width]" rows="5"><?php echo $menu['submenu_colum_width']?></textarea>
				<i><?php echo $this->language->get('text_explain_submenu_cols');?></i>
 			</td>
		</tr>
		<tr>
			<td><?php echo $this->language->get("entry_sub_menutype");?></td>
			<td>
				<?php //echo '<pre>'.print_r( $menu,1 ); die ;?>
				<select name="megamenu[type_submenu]" id="megamenu-type_submenu">
					<?php foreach( $submenutypes as $stype => $text ) { ?>
					<option value="<?php echo $stype;?>" <?php if($stype==$menu['type_submenu']) { ?> selected="selected"<?php } ?>><?php echo $text;?></option>
					<?php } ?>
				</select>
				<i><?php echo $this->language->get('text_explain_submenu_type');?></i>
			</td>
		</tr>
		<tr class="type_submenu" id="type_submenu-html" style="display:none;">
			<td><?php echo $this->language->get('entry_submenu_content');?></td>
			<td>
				<textarea name="megamenu[submenu_content]" id="submenu_content"><?php echo $menu['submenu_content'];?></textarea>
			
			</td>
		</tr>

		<?php for($j=0;$j<5;$j++){ ?>
		<tr class="type_submenu  iwidget" id="type_submenu-widget" style="display:none;">
			<td><?php echo $this->language->get('entry_widget_id');?></td>
			<td>
				<?php if( is_array($widgets) && $j==0 )  {
				 $arr =  explode(',',$menu['widget_id']);
				  $tem = '';
					for($a=0;$a<count($arr);$a++)
					{
						foreach( $widgets as $w => $t ) {
							if($arr[$a] == $t['id'])
							{
								echo  $t['name']."<br/>";
							
								break;
							}
						}
					}
					}
					if( is_array($widgets)){
				 ?>
				 
				 
				 
				 <select onchange="widget_id();" id="widget_sl<?php echo $j; ?>"  >
					<option value="">--Select--</option>
				 	<?php  
					
					
					
					foreach( $widgets as $w => $t ) {				
						
						?>
						<option <?php  echo $tem; ?>  value="<?php echo $t['id']; ?>"><?php echo $t['name']; ?></option>
						<?php 
						 $tem = '';
					}

					?>
				 </select>
				 <?php } ?>
			</td>
		</tr>
		<?php  } ?>
		
		
		

	</table>
	<input type="hidden" name="megamenu[widget_id]" value="<?php echo $menu['widget_id']; ?>" id="value_widget_id"/>
	
	
	
	<input type="hidden" name="megamenu[megamenu_id]" value="<?php echo $menu['megamenu_id']?>"/>
</div>
<?php endif; ?>

<script type="text/javascript"> 

function changtype(){
	$(".cltitle").val("");
	$(".cldescription").val("");
	
}
function changeinformation(id){
		 $.ajax({
        
            type: "post",
            
            url : 'index.php?route=module/megamenubase/informationcomplete&token=<?php echo $token; ?>',  
            
            data:{'information_id':id},
            
            dataType : "json",
            
            success : function(data){			
			 var languages = data['languages'];
			 var information = data['information_info'];
				for(var i in languages)
				{
					$('#title_'+languages[i]).val(information[languages[i]]['title']);
					
				}
				
            },
        });
}
function changeblog(id){
		 $.ajax({
        
            type: "post",
            
            url : 'index.php?route=module/megamenubase/blogcomplete&token=<?php echo $token; ?>',  
            
            data:{'blog_id':id},
            
            dataType : "json",
            
            success : function(data){			
			 var languages = data['languages'];
			 var blogs = data['blogs'];
				for(var i in languages)
				{
					$('#title_'+languages[i]).val(blogs[i]['title']);
					
				}
				
            },
        });
}

function widget_id(){
	var str = '';
	for(var i = 0;i< 5;i++)
	{
		str += $("#widget_sl"+i).val()+",";
	
	}
	$("#value_widget_id").val(str);
}

$("#type_submenu-"+$("#megamenu-type_submenu").val()).show();
$("#megamenu-type_submenu").change( function(){

$(".type_submenu").hide();

$("#type_submenu-"+$(this).val()).show();
if($(this).val()=='widget')
	$(".iwidget").show();
else
	$(".iwidget").hide();
} );


CKEDITOR.replace('submenu_content', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});


CKEDITOR.replace('megamenu[content_text]', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});




   $( "#grouptabs a" ).tabs();
   $( "#language-<?php echo $module_row; ?> a" ).tabs();
   $(".megamenutype").hide();
   $("#megamenutype-"+ $("#megamenutype").val()).show();
   $("#megamenutype").change( function(){
		$(".megamenutype").hide();
		$("#megamenutype-"+$(this).val()).show();
   } );
   
   




$('input[name=\'megamenu-manufacturer\']').autocomplete({
	delay: 500,
	source: function(request, response) {		
		$.ajax({
			url: 'index.php?route=catalog/manufacturer/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					'manufacturer_id':  0,
					'name':  '<?php echo $text_none; ?>'
				});
				
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.manufacturer_id
					}
				}));
			}
		});
	},
	select: function(event, ui) {
		$('input[name=\'megamenu-manufacturer\']').val(ui.item.label);
		$('input[name=\'megamenu[item]\']').val(ui.item.value);
		
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});

$("#megamenu-information").change( function(){ 
	$('input[name=\'megamenu[item]\']').val($(this).val());
} );
$("#megamenu-blog").change( function(){ 
	$('input[name=\'megamenu[item]\']').val($(this).val());
} );
$('input[name=\'megamenu-product\']').autocomplete({
	delay: 500,
	source: function(request, response) {		
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					'product_id':  0,
					'name':  '<?php echo $text_none; ?>'
				});
				
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
		$('input[name=\'megamenu-product\']').val(ui.item.label);
		$('input[name=\'megamenu[item]\']').val(ui.item.value);
		
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});

   
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
		$('input[name=\'megamenu[item]\']').val(ui.item.value);
		
		
		 $.ajax({
        
            type: "post",
            
            url : 'index.php?route=module/megamenubase/autocomplete&token=<?php echo $token; ?>',  
            
            data:{'category_id':ui.item.value},
            
            dataType : "json",
            
            success : function(data){			
			 var languages = data['languages'];
			 var category = data['category_description'];
				for(var i in languages)
				{
					$('#title_'+languages[i]).val(category[languages[i]]['name']);
					//$('#description_'+languages[i]).val(category[languages[i]]['description']);
				
				
				
				}
				return false;
            },
        });
		
		
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});
</script>

<?php  /*
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 

<script type="text/javascript"><!--

<?php foreach ($languages as $language) { ?>

CKEDITOR.replace('description_<?php echo $language['language_id']; ?>', {

	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',

	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',

	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',

	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',

	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',

	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'

});

<?php } ?>

//--></script> 
*/
?>