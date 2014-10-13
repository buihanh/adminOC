<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" ); ?>
<?php echo $header; ?>

<?php if( $SPAN[0] ): ?>
	<div class="span<?php echo $SPAN[0];?>">
	<?php echo $column_left; ?>
	</div>
<?php endif; ?>

		<div class="span<?php echo $SPAN[1];?>">
		
			<div id="content"><?php echo $content_top; ?>
			  <div class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
				<?php } ?>
			  </div>
			  <h1><?php echo $heading_title; ?></h1>
			  
			  <?php 
			 // echo "<pre>";
			 // print_r($products); ?>
			  
			  
			  
			   <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Advanced Tables
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Demo URL</th>
                                            <th>Image</th>
                                            
											<th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
										<?php foreach($products as $product) { ?>
                                        <tr class="gradeA"  id="item_product<?php  echo $product['product_id']; ?>" >
                                            <td><a target="_blank" href="<?php echo $product['href']; ?>"><?php echo $product['name'];  ?></a></td>
                                            <td><?php echo $product['price'];  ?></td>
                                            <td><?php echo $product['name'];  ?></td>
                                            <td class="center"><img src="<?php echo $product['thumb'];  ?>" /></td>
                                           <!-- <td class="center"><a href="<?php echo $product['href']; ?>" ><?php echo $product['filesoure']; ?></a></td>-->
											<td><a href="<?php  echo $this->url->link('account/product/update', 'product_id=' . $product['product_id']) ?>">Edit</a>
												<a href="javascript:void(0);" onclick="delectproduct(<?php  echo $product['product_id']; ?>);"  >Xóa</a>
											</td>
                                        </tr>
										<?php }  ?>
                                        
                                      
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
				
			  
			  
			  
			  
			  
			</div>
		</div>  
  <?php echo $content_bottom; ?></div>
 
	<?php if( $SPAN[2] ): ?>
	<div class="span<?php echo $SPAN[2];?>">	
		<?php echo $column_right; ?>
	</div>
	<?php endif; ?>
	
	
	
	<script>
	function delectproduct(product_id)
	{
		var r=confirm("You are sure?");
		if (r==false)
		  {
			return false;
		  }
		 url = $('base').attr('href') + 'index.php?route=account/product/delete';
        $.ajax({
            type: "post",
            url : url,
            data:{'product_id':product_id }, 
            dataType : "html",
            success : function(response){
					$("#item_product"+product_id).hide();
				}			
			});
	}
	</script>
	
<?php echo $footer; ?> 