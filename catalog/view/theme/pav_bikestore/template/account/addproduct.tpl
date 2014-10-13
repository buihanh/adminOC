<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" ); ?>
<?php echo $header; ?>

<?php if( $SPAN[0] ): ?>
<div class="span<?php echo $SPAN[0];?>">
    <?php echo $column_left; ?>
</div>
<?php endif; ?>

<div class="span<?php echo $SPAN[1];?>">
    <?php if ($success) { ?>
    <div class="success"><?php echo $success; ?></div>
    <?php } ?>
    <div id="content"><?php echo $content_top; ?>
        <div class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
        <h1><?php echo $heading_title; ?></h1>



    <div class="row">
    <div class="col-md-12">
    <!-- Form Elements -->
    <div class="panel panel-default">
    <div class="panel-heading">
        Form Add product
    </div>
    <div class="panel-body">
    <div class="row">
		<form id="form-upload" method="post"  enctype="multipart/form-data">
		<div class="product-info">
			<div class="col-md-12"  id="error" >
					
			</div>
			<div class="col-md-6">
				<h3>Name & Description</h3>
				<hr/>
					<div class="form-group">
						<label>Product Name <span class="required">*</span></label>
						<input  placeholder="PLease Enter Product Name" class="form-control" type="text" name="name_product" id="name_product" >
					</div>
					<div class="form-group">
						<label>Price <span class="required">*</span></label>
						<input type="text" name="price_product" id="price_product" placeholder="Price" class="form-control">
					</div>
					  <div class="form-group">
						<label>Description</label>
						<textarea name="description_products" id="description_product" class="description_product" cols="40" rows="5" class="form-control"></textarea>
						<input type="hidden" name="description_product"   id="description_producthh" />
					</div>
					
					<h3>Files </h3>  
						<hr/>			
						<div class="form-group">
								 <label>Image</label>
								<div class="image"><img src="image/no_image.jpg" alt="" id="thumb" />
								<input type="hidden" name="image"  value="<?php //echo $image; ?>" id="image" />
								<br />
								<a onclick="image_upload('image', 'thumb');">Browse</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb').attr('src', 'image/no_image.jpg'); $('#image').attr('value', '');">clear</a></div>
					  
						   
							</div>
							 <div class="form-group">
								<label>File</label>
								<input type="file" name="file" id="select-file"/>
							 </div>
					
					
					
					
		
		
			</div>	
		
			<div class="col-md-6">
				<h3>Category & Attributes</h3> 
				<hr/>
					<div class="form-group">
						<label>Category <span class="required">*</span></label>
						<select class="form-control" id="category_id"  name="category_id" >
							<option value="">--Select--</option>
						 <?php
							if ($categories) {
								foreach($categories as $category)
								{
									echo "<option value='".$category['category_id']."' >".$category['name']."</option>";
									for ($i = 0; $i < count($category['children']); $i++)
									 {
										echo "<option value='".$category['children'][$i]['category_id']."' > -- ".$category['children'][$i]['name']."</option>";
									 }
								}
							 }
							?>
						</select>
					</div>

					<div class="form-group">
						<label>Demo URL</label>
						<input type="text" name="link_product" id="link_product" placeholder="Demo URL" class="form-control">
					</div>
					
					
					<?php 
					if ($options) {
						foreach($options as $option)
						{
							if($option['type']=="text")
							{
								?>
									<div class="form-group">
										<label><?php echo $option['name'];  ?></label>
										<input type="text" name="option[<?php echo $option['option_id']; ?>]"  placeholder="" class="form-control"/>
									</div>
								<?php
							}
							if($option['type']=="select")
							{
								?>
									<div class="form-group">
										<label><?php echo $option['name'];  ?></label>
										<select name="option[<?php echo $option['option_id']; ?>]"  class="form-control" >
											<?php 
											foreach($option['option_value'] as $row)
											{  ?>
												<option  value="<?php echo $row['option_value_id']; ?>" ><?php echo $row['name']; ?></option>
											<?php 
											} ?>
										</select>
									</div>
								<?php
							}
							if($option['type']=="checkbox")
							{
								?>
									<div class="form-group">
										<label><?php echo $option['name'];  ?></label>
											<div class="div_option">
												<?php 
												foreach($option['option_value'] as $row)
												{  ?>
													<input  type="checkbox" name="option[<?php echo $option['option_id']; ?>][]" value="<?php echo $row['option_value_id'] ?>" /><?php echo $row['name']; ?><br/>
												<?php 
												} ?>
											</div>
									</div>
								<?php
							}
							
							if($option['type']=="radio")
							{
								?>
									<div class="form-group">
										<label><?php echo $option['name'];  ?></label>
											<div class="div_option_<?php echo $option['type']; ?>">
												<?php 
												foreach($option['option_value'] as $row)
												{  ?>
													<div><input type="radio" name="option[<?php echo $option['option_id']; ?>][]" value="<?php echo $row['option_value_id'] ?>" /><?php echo $row['name']; ?></div>
												<?php 
												} ?>
											</div>
									</div>
								<?php
							}
						}
					}
					 ?>
				</div>
			  
			</div>
			<div class="col-md-12">
				<hr/>
				<button onclick="saveProduct();" class="btn btn-default" type="button">Submit</button>
				<button  class="btn btn-primary" id="reset"  type="reset">Reset</button>
				 <div id="progress">
					<div id="bar"></div>
					<div id="percent">0%</div>
				  </div>					
				<div id="result">
				</div>
			</div>
	  </form>
	
	
	
	
	

	
	
    </div>
    </div>
    </div>
    <!-- End Form Elements -->
    </div>
    </div>




    </div>
    <?php echo $content_bottom; ?></div>

<?php if( $SPAN[2] ): ?>
<div class="span<?php echo $SPAN[2];?>">
    <?php echo $column_right; ?>
</div>
<?php endif; ?>

<?php echo $footer; ?>

<script type="text/javascript" src="catalog/view/javascript/ckeditor/ckeditor.js"></script>

<script type="text/javascript"><!--
	
    function saveProduct(){

        var name_product = $("#name_product").val();
        var price_product = $("#price_product").val();
        var link_product = $("#link_product").val();
        var image = $("#image").val();
        var file_product = $("#file_product").val();
		var category_id = $("#category_id").val();
        var description_product = CKEDITOR.instances['description_product'].getData();
		
		
		$("#description_producthh").val(description_product);
		var bl = false;
		var err = 'PLease enter: ';
		
		if(name_product=='')
		{
			err += "product name, ";
			bl = true;
		}
		if(price_product=='')
		{
			err += " product price, ";
			bl = true;
		}
		if(category_id=='')
		{
			err += " category ";
			bl = true;
		}
		$("#error").html('');
		if(bl)
		{
			$("#error").html(err);
			return false;
		}
		
        url = $('base').attr('href') + 'index.php?route=account/product/addproduct';
        $.ajax({
            type: "post",
            url : url,
            /*  data:{		
				'category_id':category_id,
                'name_product':name_product,
                'price_product':price_product,
                'link_product':link_product,
                'image':image,
                'file_product':file_product,
                'description_product':description_product
            },  */
			
			data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'), 
            dataType : "html",
            success : function(response){
				$("#progress").show();
					
				  var bar = document.getElementById('bar')
				  var percent = document.getElementById('percent')
				  var result = document.getElementById('result')
				  var percentValue = "0%";
				  
				  var fileInput = document.getElementById('select-file'); 
				  var form = document.getElementById('form-upload');
				  url = $('base').attr('href') + 'index.php?route=account/product/uploadfile';
				 
					var file = fileInput.files[0];
					var fd = new FormData();
					fd.append('file', file);
					fd.append('product_id',response);
					
					
					
					var xhr = new XMLHttpRequest();
					xhr.open('POST', url, true);
					xhr.upload.onprogress = function(e) {
					  if (e.lengthComputable) {
						var percentValue = (e.loaded / e.total) * 100 + '%';
						percent.innerHTML  = percentValue;
						bar.setAttribute('style', 'width: ' + percentValue);
					  }
					};
					
					xhr.onload = function() {
					  if (this.status == 200) {
						result.innerHTML = this.response;        
					  };
					};
					
					xhr.send(fd);					
					
					$( "#reset" ).trigger( "click" );
					$('#thumb').attr('src', 'image/no_image.jpg');
					CKEDITOR.instances['description_product'].setData(' ');
					$( "#from_content" ).hide();
					$( "#file_soure" ).show();
					
					setTimeout( "jQuery('#progress').hide();",3000 );
            }
        });
    }








    CKEDITOR.replace('description_product', {
        filebrowserBrowseUrl: 'index.php?route=common/filemanager',
        filebrowserImageBrowseUrl: 'index.php?route=common/filemanager',
        filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager',
        filebrowserUploadUrl: 'index.php?route=common/filemanager',
        filebrowserImageUploadUrl: 'index.php?route=common/filemanager',
        filebrowserFlashUploadUrl: 'index.php?route=common/filemanager'
    });

    //--></script>
<script type="text/javascript"><!--
    function image_upload(field, thumb) {
        $('#dialog').remove();

        $('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php // echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');

        $('#dialog').dialog({
            title: 'image manager',
            close: function (event, ui) {
                if ($('#' + field).attr('value')) {
                    $.ajax({
                        url: 'index.php?route=common/filemanager/images&token=<?php  //echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
                        dataType: 'text',
                        success: function(data) {

							$("#image").val(data);
                            $('#' + thumb).replaceWith('<img width="100px" height="100px" src="image/' + data + '" alt="" id="' + thumb + '" />');
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
	
	
	
	
	
	