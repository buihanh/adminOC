<?php echo $header; ?>

<?php 
	$modules_tpl = '';
 
	$modules_tpl2 = dirname(__FILE__).'/modules_'.trim($this->getTheme()).'.tpl';
	$modules_tpl1 = DIR_TEMPLATE.'module/themecontrol/modules.tpl';
	$modules_tpl3 = DIR_APPLICATION.'view/template/common/admin/modules.tpl';

	if( file_exists($modules_tpl3) ){
		 $modules_tpl = $modules_tpl3;
	} else if( file_exists($modules_tpl2) ){
		$modules_tpl = $modules_tpl2;
	}elseif( file_exists($modules_tpl1) ){
		$modules_tpl = $modules_tpl1;
	} 



?>
<div id="content">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="sform">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box"  id="themepanel">
 
      <div style="line-height: 36px;" class="buttons">
	  <h4 style="float:left">Cấu hình Giao diện Website:</h4>
	  <a class="button button-action btn-save" rel=""><?php echo $button_save; ?></a>
	  <a id="button_save_keep" class="button button-action" rel="save-edit"><?php echo $button_save_keep; ?></a>
	  
	  <a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>

    <div class="content">
		
	 <div class="entry-theme">
	 <table>
		<tr>
			<td>Đang cấu hình giao diện:</td>
			<td><select style="width:300px" class="form-control"  name="themecontrol[default_theme]">
			<?php foreach( $templates as $template ): ?>
			<?php  $selected= $template == $module['default_theme']?'selected="selected"':'';	?>
			<option value="<?php echo $template;?>" <?php echo $selected; ?>><?php echo $template; ?></option>
			<?php endforeach; ?>
		</select></td>
		</tr>
	 </table>
		
		
		
		<?php if( isset($first_installation) )  { ?>
			<div class="label" style="float:right"><?php echo $this->language->get("text_first_installation"); ?></div>
		<?php } ?>
	  </div>
	  
		<div class="ibox">
      
	  
	
		 <div id="tabs" class="htabs">
			
			<a href="#tab-general">Quản lý chung</a>
			<a href="#tab-pages-layout">Cấu hình website</a>
			<a href="#tab-font">Cấu hình font chữ</a>
			<?php if(  $modules_tpl ){ ?>
			<a href="#tab-imodules">Thông tin</a>
			<?php } ?>
			<a href="#tab-modules">Cấu hình vị trí</a>
			
			
		 </div>
		 <input  class="form-control" type="hidden" name="themecontrol[layout_id]" value="1">
		  <input  class="form-control" type="hidden" name="themecontrol[position]" value="1">


		<div id="tab-contents">
				
				<div id="tab-pages-layout">
		  			 
	  				 <div id="my-tab-pageslayout" class="vtabs">
	  					<a href="#tab-pcategory" onclick="return false;">Danh mục</a>
	  					<a href="#tab-pproduct" onclick="return false;">Sản phẩm</a>
	  					<a href="#tab-pcontact" onclick="return false;">Liên hệ</a>
	  				 </div> 
	  				 <div class="page-tabs-wrap">
			  			 <div class="clearfix" id="tab-pcategory">
			  			 	<div class="tab-inner">
			  			 		<table cellpadding="10" class="form">
			  			 			<tr>
			  			 				<td>Hiển thị dạng </td>
			  			 				<td>

			  			 					<select class="form-control" name="themecontrol[cateogry_display_mode]">
			  			 						<?php foreach( $cateogry_display_modes as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['cateogry_display_mode']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  			 					</select>
			  			 				</td>
			  			 			</tr>	
			  			 			<tr>
			  			 				<td><?php echo $this->language->get('text_max_product_row'); ?></td>
			  			 				<td>

			  			 					<select class="form-control" name="themecontrol[cateogry_product_row]">
			  			 						<?php foreach( $product_rows as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['cateogry_product_row']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  			 					</select>
			  			 				</td>
			  			 			</tr>	
			  			 			 
			  			 			<tr>
			  			 				<td><?php echo $this->language->get('text_show_product_zoom');?></td>
			  			 				<td>
			  			 					<select class="form-control" name="themecontrol[category_pzoom]">
			  			 						<?php foreach( $yesno  as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['category_pzoom']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  			 					</select>
			  			 				</td>
			  			 			</tr>	 
			  			 		</table>
			  			 	</div>
			  			 </div>
			  			  <div class="clearfix" id="tab-pproduct">
			  				<div class="tab-inner">
			  					<table cellpadding="10" class="form">
			  						<tr>
			  							<td><?php echo $this->language->get('text_enable_productzoom'); ?></td>
			  							<td>
			  								<select class="form-control" name="themecontrol[product_enablezoom]">
			  									<?php foreach( $yesno  as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['product_enablezoom']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  								</select>
			  							</td>
			  						</tr>
			  						<tr>
			  							<td><?php echo $this->language->get('text_product_zoomgallery'); ?></td>
			  							<td>
			  								<select class="form-control" name="themecontrol[product_zoomgallery]">
			  									<?php foreach( $product_zoomgallery  as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['product_zoomgallery']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  								</select>
			  							</td>
			  						</tr>	
			  						<tr>
			  							<td><?php echo $this->language->get('text_product_zoommode'); ?></td>
			  							<td>
			  								<select class="form-control" name="themecontrol[product_zoommode]">
			  									<?php foreach( $product_zoom_modes  as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['product_zoommode']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  								</select>
			  							</td>
			  						</tr>
			  						<tr>
			  							<td><?php echo $this->language->get('text_product_zoomlenssize'); ?></td>
			  							<td>
			  								<input  class="form-control" value=<?php echo $module['product_zoomlenssize'];?> name="themecontrol[product_zoomlenssize]"/> 
			  							</td>
			  						</tr>
			  						<tr>
			  							<td><?php echo $this->language->get('text_product_zoomeasing'); ?></td>
			  							<td>
			  								<select class="form-control" name="themecontrol[product_zoomeasing]">
			  									<?php foreach( $yesno  as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['product_zoomeasing']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  								</select>
			  							</td>
			  						</tr>
			  						
			  						<tr>
			  							<td><?php echo $this->language->get('text_product_zoomlensshapes'); ?></td>
			  							<td>
			  								<select class="form-control" name="themecontrol[product_zoomlensshape]">
			  									<?php foreach( $product_zoomlensshapes  as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['product_zoomlensshape']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  								</select>
			  							</td>
			  						</tr>

			  						<tr>
			  			 				<td><?php echo $this->language->get('text_product_related_column'); ?></td>
			  			 				<td>

			  			 					<select class="form-control" name="themecontrol[product_related_column]">
			  			 						<?php foreach( $product_rows as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['product_related_column']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  			 					</select>
			  			 				</td>
			  			 			</tr>	
			  			 			<tr>
			  			 				<td colspan="1"><h4><?php echo $this->language->get('text_add_product_tab');?></h4></td>
			  			 				<td>
			  			 					<select class="form-control" name="themecontrol[enable_product_customtab]">
			  			 						<?php foreach( $yesno as $k=>$v ) { ?>
			  			 					 		<option value="<?php echo $k;?>"  <?php if( $k==$module['enable_product_customtab']){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
			  			 						<?php }  ?>	
			  			 					</select>
			  			 				</td>
			  			 			</tr>
			  			 			<tr>
			  			 				
			  			 				<td colspan="2">
			  			 					 
			  			 					<table cellpadding="10" class="form">
			  			 					<?php   foreach( $languages as $language ) {  

			  			 							 $customtab_name = isset($module['product_customtab_name'][$language['language_id']])
			  			 							 				?$module['product_customtab_name'][$language['language_id']] :"";
			  			 							 $customtab_content = isset($module['product_customtab_content'][$language['language_id']])?$module['product_customtab_content'][$language['language_id']]:"";				
			  			 					 ?>
			  			 						<tr>
			  			 						<td>  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name'];?> 	</td>
			  			 						<td>
			  			 						 	<p>
			  			 							 <label> <?php echo $this->language->get('entry_customtab_name');?></label>	</p>

					  			 					 <p><input  class="form-control" size="80" type="text"  name="themecontrol[product_customtab_name][<?php echo $language['language_id'];?>]" value="<?php echo $customtab_name;?>"/></p>
					  			 					 
					  			 					 <label> <?php echo $this->language->get('entry_customtab_content');?> 	
			  			 							<textarea class="form-control" id="customtab-content-<?php echo $language['language_id']; ?>"  style="width:90%; height:300px" name="themecontrol[product_customtab_content][<?php echo $language['language_id'];?>]"><?php echo $customtab_content;?></textarea>
			  			 						 	</td>
			  			 						</tr>
			  			 					<?php } ?>	
			  			 					</table>
			  			 				</td>
			  			 			</tr>
			  					</table>
			  				</div>
			  			 </div>

			  			 <div id="tab-pcontact">
			  			 	<div class="tab-inner">
			  			 		
			  			 		<table cellpadding="10" class="form">
			  			 			<tr>
			  			 				<td class="" colspan="2"><h4>Nội dung</h4></td>
			  			 			</tr>
			  			 			<?php foreach( $languages as $language ) {  ?>
			  			 			<tr>
			  			 				<td>
			  			 					<?php 
			  			 						$contact_customhtml = isset($module['contact_customhtml'][$language['language_id']])?
			  			 						$module['contact_customhtml'][$language['language_id']]:""; 
			  			 					 ?>
			  			 					 <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
			  			 					 <?php echo $language['name'];?> 
			  			 				</td>
			  			 				<td>
			  			 					<textarea class="form-control" style="width:90%; height:300px" name="themecontrol[contact_customhtml][<?php echo $language['language_id'];?>]"><?php echo $contact_customhtml;?></textarea>
			  			 				</td>
			  			 			<tr>
			  			 			<?php } ?>	
			  			 		</table>	
			  			 	</div>	
			  			 </div>

			  			
			  			</div>  <div class="clear clearfix"></div>
				</div>  

				<div id="tab-general">
					<div class="tab-inner">
						<table cellpadding="10" class="form">
							<tr>
								<td><?php echo 'Giao diện mặc dịnh'; ?></td>
								<td>
									<div class="group-options theme-skins clear">
										<select class="form-control" name="themecontrol[skin]">
											<option value="">Mặc định</option>
										<?php foreach( $skins as $skin ): ?>
											<option value="<?php echo $skin;?>" <?php if( $skin==$module['skin']){ ?> selected="selected" <?php } ?>><?php echo $skin;?></option>
										<?php endforeach;?>
										</select>
										
										<div class="clear"></div>
									</div>
						
								</td>
							</tr>
						
							<tr>
								<td>Chiều rộng</td>
								<td>
									<input  class="form-control"  name="themecontrol[theme_width]" value="<?php echo $module['theme_width'];?>">
								
								</td>
							</tr>
							<tr class="highlight">
							<td>Trạng thái bản quyền</td>
							<td>
								<select class="form-control" name="themecontrol[enable_custom_copyright]">
								
								<?php foreach( $yesno as $v=>$op ): ?>
									<option value="<?php echo $v;?>" <?php if( $v==$module['enable_custom_copyright']){ ?> selected="selected" <?php } ?>><?php echo $op;?></option>
								<?php endforeach;?>
								</select>
							</td>
						</tr>
							<tr>
								<td>Bản quyền</td>
								<td>
									<textarea class="form-control" cols="40" rows="3" name="themecontrol[copyright]"><?php echo $module['copyright'];?></textarea>
								</td>
							</tr>
							
							
							
							
							<tr>
								<td>
									<label>Body Pattern</label>	
								</td>
								<td>
									<div class="group-input">
										<div class="box-patterns clearfix">	
											<div class="none" style="background:#FFF"></div>
											<?php foreach( $patterns as $pattern )  { ?>
											<div class="<?php echo str_replace(".png","",$pattern);?>" style="background:url(<?php echo $theme_url."image/pattern/".$pattern; ?>)"></div>
											<?php } ?>
										</div>
										<input  class="form-control" name="themecontrol[body_pattern]" type="hidden" id="userparams_body_pattern" value="<?php echo $module['body_pattern'];?>"/>
										<script type="text/javascript">
											$( ".box-patterns div").click( function(){
												$("#userparams_body_pattern").val(  $(this).attr("class") );
												$( ".box-patterns div").removeClass( "active" );
												$(this).addClass( "active" );
											} );
											if( $("#userparams_body_pattern").val() ){ 
												$( ".box-patterns").find("."+ $("#userparams_body_pattern").val() ).addClass( "active" );
											}
										</script>
									</div>
									
								</td>
							</tr>
							<tr>
								<td><?php echo $this->language->get("entry_use_custom_background");?></td>
								<td> 
								<select class="form-control" name="themecontrol[use_custombg]">
									<?php foreach( $yesno as $v=>$op ): ?>
									<option value="<?php echo $v;?>" <?php if( $v==$module['use_custombg']){ ?> selected="selected" <?php } ?>><?php echo $op;?></option>
									<?php endforeach;?>
								</select>
								</td>
							</tr>
							<tr>
								<td><?php echo $this->language->get('entry_customize_background');?></td>
								<td>
									<?php $image = $module['bg_image'];	?>
									<div class="image">
										<img src="<?php echo $bg_thumb; ?>" alt="" id="thumb" />
										<input  class="form-control" type="hidden" name="themecontrol[bg_image]" value="<?php echo $image; ?>" id="image" />
										<br />
										<a onclick="image_upload('image', 'thumb');"><?php echo $this->language->get("text_browse"); ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
										<a onclick="$('#thumb').attr('src', '<?php echo $no_image; ?>'); $('#image').attr('value', '');"><?php echo $this->language->get("text_clear"); ?></a>
									</div>
									
									<div class="clearfix"><br>
									<label><?php echo $this->language->get('text_css_background_repeat');?></label>
									 <select class="form-control" name="themecontrol[bg_repeat]">
										<?php foreach( $bg_repeat as $bgr ) { ?>
											<option value="<?php echo $bgr;?>" <?php if( $bgr==$module['bg_repeat']){ ?> selected="selected" <?php } ?>><?php echo $bgr; ?></option>
										<?php } ?>
									 </select>
									</div>
									<div class="clearfix"><br>
									<label><?php echo $this->language->get('text_css_background_position');?></label>
									 <select class="form-control" name="themecontrol[bg_position]">
										<?php foreach( $bg_position as $bgp ) { ?>
											<option value="<?php echo $bgp;?>" <?php if( $bgp==$module['bg_position']){ ?> selected="selected" <?php } ?> ><?php echo $bgp; ?></option>
										<?php } ?>
									 </select>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				
				<?php if(  $modules_tpl ){ ?>
				<div id="tab-imodules">
				
					<?php require( $modules_tpl );?>
				</div>
				<?php } ?>
				<div id="tab-font">
					<table cellpadding="10" class="form">
						<tr>
							<td><?php echo $this->getLang("fontsize");?></td>
							<td>
								<select class="form-control" name="themecontrol[fontsize]">
								<?php foreach ( $fontsizes as $key => $value ): ?>
									<?php  $selected = $value == $module['fontsize']?'selected="selected"':'';	?>	
									<option value="<?php echo $value;?>" <?php echo $selected; ?>><?php echo  $value; ?></option>
								<?php endforeach; ?>
								</select>
							</td>
						</tr>
						<tr class="highlight">
							<td><?php echo $this->getLang('entry_enable_customfont');?></td>
							<td>
								<select class="form-control" name="themecontrol[enable_customfont]">
								
								<?php foreach( $yesno as $v=>$op ): ?>
									<option value="<?php echo $v;?>" <?php if( $v==$module['enable_customfont']){ ?> selected="selected" <?php } ?>><?php echo $op;?></option>
								<?php endforeach;?>
								</select>
							</td>
						</tr>
					</table>
						<?php  //  echo '<pre>'.print_r( $module,1 );die;?>
					<table cellpadding="10" class="form">
						<?php for( $i=1; $i<=3;$i++ ){ ?>	
						<tr>
							<td><b><?php echo $this->language->get('entry_font_setting');?></b></td>
							<td>
								<div  class="group-change">
									<select class="form-control" name="themecontrol[type_fonts<?php echo $i;?>]" class="type-fonts">
										<?php foreach( $type_fonts as $font ) {   ?>
										<option value="<?php echo $font[0];?>"<?php if( $module['type_fonts'.$i] == $font[0]) { ?> selected="selected"<?php } ?>><?php echo $font[1];?></option>
										<?php } ?>
									</select>
									
									<table cellpadding="10" class="form">
											<tr class="items-group-change group-standard">
												<td><?php echo $this->language->get('entry_normal_font');?></td>
												<td>
													<select class="form-control" name="themecontrol[normal_fonts<?php echo $i;?>]">
														<?php foreach( $normal_fonts as $font ) {   ?>
														<option value="<?php echo htmlspecialchars($font[0]);?>"<?php if( $module['normal_fonts'.$i] == htmlspecialchars($font[0])) { ?> selected="selected"<?php } ?>><?php echo $font[1];?></option>
														<?php } ?>
													</select>
												</td>
											</tr>
											<tr class="items-group-change group-google">
												<td><?php echo $this->language->get('entry_body_google_url');?>
												
												</td>
												<td>
													<input  class="form-control" type="text" name="themecontrol[google_url<?php echo $i;?>]" size="65" value="<?php echo $module['google_url'.$i];?>"/>
													<p><i><?php echo $this->language->get('text_explain_google_url')?></i></p>
												</td>
											</tr>
											<tr class="items-group-change group-google">
												<td>Google Family:</td>
												<td><input  class="form-control" type="text" name="themecontrol[google_family<?php echo $i?>]" size="65" value="<?php echo $module['google_family'.$i];?>"/>
												<p><i><?php echo $this->language->get('text_explain_google_family');?></i></p>
												</td>
											</tr>
									</table>
								</div>
								
							</td>
						</tr>
						
						<tr>
							<td><?php echo $this->language->get('entry_body_selector');?></td>
							<td>
								<textarea class="form-control" name="themecontrol[body_selector<?php echo $i?>]" rows="5" cols="50"><?php echo $module['body_selector'.$i];?></textarea>
								<p><i><?php echo $this->language->get('text_explain_body_selector');?></i></p>
							</td>
						</tr>
					<?php } ?>
					</table>
					
				</div>
	
				<div id="tab-modules">
					<?php include( "layout.tpl" ); ?>
				</div>
				
				
				
		
	   </div>
    </div></div>
  </div>
  
  
  </form>
  
</div>
 <script type="text/javascript"><!--

 	<?php foreach ($languages as $language) { ?>
	CKEDITOR.replace('customtab-content-<?php echo $language['language_id']; ?>', {
		filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
	});  
	<?php } ?>


$('#tabs a').tabs(); 
$('.mytabs a').tabs();
$('#languages a').tabs();
 $('#tab-pages-layout a').tabs();
$('#tabs a').click( function(){
	$.cookie("actived_tab", $(this).attr("href") );
} );

if( $.cookie("actived_tab") !="undefined" ){
	$('#tabs a').each( function(){
		if( $(this).attr("href") ==  $.cookie("actived_tab") ){
			$(this).click();
			return ;
		}
	} );
	
}
$(document).ready( function(){		
		$(".button-action").click( function(){
			$('#action_type').val( $(this).attr("rel") );
			var string = 'rand='+Math.random();
			var hook = '';
			$(".ui-sortable").each( function(){
				if( $(this).attr("data-position") && $(".module-pos",this).length>0) {
					var position = $(this).attr("data-position");
					$(".module-pos",this).each( function(){
						if( $(this).attr("data-id") != "" ){
							hook += "modules["+position+"][]="+$(this).attr("data-id")+"&";
						}				
					} );
					string = string.replace(/\,$/,"");
					hook = hook.replace(/\,$/,"");
				}	
			} );
			var unhook = '';

			$.ajax({
			  type: 'POST',
			  url: '<?php echo str_replace("&amp;","&",$ajax_modules_position);?>',
			  data: string+"&"+hook+unhook,
			  success: function(){
				$('#sform').submit();
				// 	window.location.reload(true);
			  }
			});
		return false; 
	} );
} );

$(".group-change").each( function(){
	var $this = this;
	$(".items-group-change",$this).hide();  //  alert( $(".type-fonts",this).val() );
	$(".group-"+$(".type-fonts",$this).val(), this).show();
	
	$(".type-fonts", this).change( function(){
		$(".items-group-change",$this).hide();
		$(".group-"+$(this).val(), $this).show();
	} );
});


$("#btn-guide").click( function(){
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="'+$(this).attr('href')+'" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: 'Guide For Theme: <?php echo $module["default_theme"]; ?>',
		close: function (event, ui) {},	
		bgiframe: false,
		width: 980,
		height: 560,
		resizable: false,
		modal: true
	});
	return false;
} );
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
<?php echo $footer; ?>