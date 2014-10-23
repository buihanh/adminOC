<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );
$productConfig = array(
		'product_enablezoom'         => 1,
		'product_zoommode'           => 'basic',
		'product_zoomeasing'         => 1,
		'product_zoomlensshape'      => "round",
		'product_zoomlenssize'       => "150",
		'product_zoomgallery'        => 0,
		'enable_product_customtab'   => 0,
		'product_customtab_name'     => '',
		'product_customtab_content'  => '',
		'product_related_column'     => 0,

	);
?>
<?php echo $header; ?>

<section id="columns" class="offcanvas-siderbars">
	<div class="row visible-xs">
		<div class="offcanvas-sidebars-buttons">
			<button type="button" data-for="column-left" class="pull-left btn btn-danger btn-default" style="display: none;"><i class="fa fa-sort-amount-asc"></i> Sidebar Left</button>
			<button type="button" data-for="column-right" class="pull-right btn btn-danger btn-default" style="display: none;">Sidebar Right <i class="fa fa-sort-amount-desc"></i></button>
		</div>
	</div>
	<div class="page-heading">
		<!--<h1><?php echo $heading_title; ?></h1>-->
		 <div class="breadcrumb">
		    <?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
		    <?php if($i!=0) {echo " / ";} ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		    <?php $i++;} ?>
		  </div>
	</div>
	<div class="container">
		<?php if( $SPAN[0] ){ ?>
			<aside class="col-lg-<?php echo $SPAN[0];?> col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
				<?php echo $column_left; ?>
			</aside>
		<?php } ?>
		<div class="row">
			<section class="col-md-12">
				<div id="content" class="product-detail" itemscope itemtype="http://schema.org/Product">
					<?php echo $content_top; ?>
						<div class="product-info">
							<div class="row">			
								<?php if ($thumb || $images) { ?>
								<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 image-container">
									<?php if( isset($date_available) && $date_available == date('Y-m-d')) {   ?>	    	
										<span class="product-label product-label-new">
											<span><?php echo $this->language->get( 'text_new' ); ?></span>	
										</span>												
									<?php } ?>	
									<?php if( $special )  { ?>          
										<span class="product-label product-label-special"><span><?php echo $this->language->get( 'text_sale' ); ?></span></span>
									<?php } ?>
							
									<?php if ($thumb) { ?>
									<div class="image col-xs-10" >
										
											<img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image"  data-zoom-image="<?php echo $popup; ?>" class="product-image-zoom img-responsive"/>
										
									</div>
									<?php } ?>		
							
									<?php if ($images) { ?>
									<div class="col-xs-2 image-additional slide carousel" id="image-additional">
										<div id="image-additional-carousel" class="carousel-inner">
											<?php 
											if( $productConfig['product_zoomgallery'] == 'slider' && $thumb ) {  
												$eimages = array( 0=> array( 'popup'=>$popup,'thumb'=> $thumb )  ); 
												$images = array_merge( $eimages, $images );
											}
											$icols = 4; $i= 0;
											foreach ($images as  $image) { ?>
												<?php if( (++$i)%$icols == 1 ) { ?>
												<div class="item clearfix">
												<?php } ?>
													<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" data-zoom-image="<?php echo $image['popup']; ?>" data-image="<?php echo $image['popup']; ?>">
														<img src="<?php echo $image['thumb']; ?>" style="max-width:<?php echo $this->config->get('config_image_additional_width');?>px"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" data-zoom-image="<?php echo $image['popup']; ?>" class="product-image-zoom img-responsive" />
													</a>
												<?php if( $i%$icols == 0 || $i==count($images) ) { ?>
												</div>
											  <?php } ?>
											<?php } ?>		
										</div>
										<a class="left carousel-control" href="#image-additional" data-slide="next">
											<i class="fa fa-angle-right"></i>
										</a>
										<a class="right carousel-control" href="#image-additional" data-slide="prev">							
											<i class="fa fa-angle-left"></i>
										</a>
									</div>			
									<script type="text/javascript">
										$('#image-additional .item:first').addClass('active');
										$('#image-additional').carousel({interval:false})
									</script>
									<?php } ?>     
								</div>		
								<?php } ?>
								<!-- end image box -->
					
								<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 product-view">
									<div class="row">
										<div class="col-lg-6 col-xs-6 product-info">
											<div class="product-name">
												<span>
													<?php echo $heading_title; ?>
												</span>
											</div>
											<?php if ($review_status) { ?>
											<div class="review">
												<div><img src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
											</div>
											<?php } ?>
											<div class="description">
												<?php if ($manufacturer) { ?>
													<p>
														<i class="fa fa-chevron-down"></i>
														<label><?php echo $text_manufacturer; ?></label>
														<a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a>								
													</p>	
												<?php } ?>
												<p>
													<i class="fa fa-chevron-down"></i>
													<label><?php echo $text_model; ?></label>
													<?php echo $model; ?>
												</p>
												<?php if ($reward) { ?>
													<p>
														<i class="fa fa-chevron-down"></i>
														<label><?php echo $text_reward; ?></label>
														<?php echo $reward; ?>
													</p>	
												<?php } ?>
												<p>
													<i class="fa fa-chevron-down"></i>
													<label><?php echo $text_stock; ?></label>
													<span><?php echo $stock; ?></span>							
												</p>	
											</div>
											<?php if ($price) { ?>
											<div class="price" itemscope itemtype="http://schema.org/Offer">
												<div class="price-gruop">
													<span class="text-price"><?php echo $text_price; ?></span>
													<?php if (!$special) { ?>
													<?php echo $price; ?>
													<?php } else { ?>
													<span class="price-old"><?php echo $price; ?></span> 
													<span class="price-new"><?php echo $special; ?></span>
													<?php } ?>
												</div>	
												<div class="other-price">
													<?php if ($tax) { ?>
														<span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br/>
													<?php } ?>
													<?php if ($points) { ?>
														<span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span>
													<?php } ?>
												</div>						
												<?php if ($discounts) { ?>			
												<div class="discount">
													<ul>
														<?php foreach ($discounts as $discount) { ?>							
														<li><?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?></li>
														<?php } ?>
													</ul>
												</div>
												<?php } ?>
											</div>
											<?php } ?>
										</div>
										<div class="col-lg-6 col-xs-6">
											<div class="product-extra">
												<div class="quantity-adder">
													<div class="quantity-number pull-left">
														<span><?php echo $text_qty; ?></span>
														<input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
													</div>
													<div class="quantity-wrapper pull-left">
														<span class="add-up add-action fa fa-plus"></span> 
														<span class="add-down add-action fa fa-minus"></span>
													</div>					
													<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />	
												</div>
												<div class="clearfix"></div>									
												<div class="cart">
													<!-- <input type="button" value="<?php //echo $button_cart; ?>" id="button-cart" class="button btn btn-theme-default" /> -->
													<a id="button-cart" class="btn btn-shopping-cart btn-outline-default">						
														<span><?php echo $button_cart; ?></span>
													</a> 
												</div>
												<div class="action">
													<div class="">
														<a class="wishlist btn btn-theme-default" onclick="addToWishList('<?php echo $product_id; ?>');">
															<?php echo $button_wishlist; ?>
														</a>				
													</div>
													<div class="">
														<a class="compare btn btn-theme-default" onclick="addToCompare('<?php echo $product_id; ?>');">							
															<?php echo $button_compare; ?>
														</a>
													</div>
												</div>
												<!-- <span>&nbsp;&nbsp;<?php //echo $text_or; ?>&nbsp;&nbsp;</span> -->
												<div class="share">
													<!-- AddThis Button END --> 				
													<div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
													<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
													<!-- AddThis Button BEGIN -->
												</div>	
											</div>
										</div>
										
									</div><!-- end product view row -->				
									<div class="tabs-group box row-fuild">
										<div id="tabs" class="tab-nav col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<ul class="nav nav-theme noborder clearfix">
												<li><a href="#tab-description"><?php echo $tab_description; ?></a></li>
												<?php if ($attribute_groups) { ?>
												<li>
												    <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
												</li>
												<?php } ?>
												<?php if ($review_status) { ?>
												<li>
												    <a href="#tab-review"><?php echo $tab_review; ?></a>
												</li>
												<?php } ?>
											</ul>
										  </div><!-- end tab -->
										  <div class="tab-content col-lg-12 col-md-12 col-sm-12 col-xs-12">
										  	<div id="tab-description" class="tab-content"><?php echo $description; ?></div>
										  	<?php if ($attribute_groups) { ?>
											  <div id="tab-attribute" class="tab-content">
											    <table class="attribute">
											      <?php foreach ($attribute_groups as $attribute_group) { ?>
											      <thead>
											        <tr>
											          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
											        </tr>
											      </thead>
											      <tbody>
											        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
											        <tr>
											          <td><?php echo $attribute['name']; ?></td>
											          <td><?php echo $attribute['text']; ?></td>
											        </tr>
											        <?php } ?>
											      </tbody>
											      <?php } ?>
											    </table>
											  </div>
											  <?php } ?>
											  <?php if ($review_status) { ?>
												  <div id="tab-review" class="tab-content">
												    <div id="review"></div>
												    <h2 id="review-title"><?php echo $text_write; ?></h2>
												    <b><?php echo $entry_name; ?></b><br />
												    <input type="text" name="name" value="" />
												    <br />
												    <br />
												    <b><?php echo $entry_review; ?></b>
												    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
												    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
												    <br />
												    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
												    <input type="radio" name="rating" value="1" />
												    &nbsp;
												    <input type="radio" name="rating" value="2" />
												    &nbsp;
												    <input type="radio" name="rating" value="3" />
												    &nbsp;
												    <input type="radio" name="rating" value="4" />
												    &nbsp;
												    <input type="radio" name="rating" value="5" />
												    &nbsp;<span><?php echo $entry_good; ?></span><br />
												    <br />
												    <b><?php echo $entry_captcha; ?></b><br />
												    <input type="text" name="captcha" value="" />
												    <br />
												    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
												    <br />
												    <div class="buttons">
												      <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
												    </div>
												</div>
											<?php } ?>
										  </div><!-- end tab content -->
									</div>
								</div><!-- end product view -->
							</div>
						</div><!-- end product info -->
						<?php if ($products) { ?>
						<div class="related-wapper">
							<div class="box product-related clearfix">
								<div class="box-heading">
									<span><?php echo $tab_related; ?>(<?php echo count($products); ?>)</span>
								</div>
								<div id="related" class="products-rows row slide row-fluid" data-interval="0">
								<div class="carousel-controls">
							      <a class="carousel-control left" href="#related" data-slide="prev"><i class="fa fa-angle-left"></i></a>
							      <a class="carousel-control right " href="#related" data-slide="next"><i class="fa fa-angle-right"></i></a>
							    </div>
							    <div class="box-content carousel-inner">
							    	
							      <?php $i=0; foreach ($products as $product) { ?>
							      <?php 
							    		if($i%4==0)
							    		{
							    			echo '<div class="item"><div class="row-fluid products-row">';
							    		}
							    	?>
								      <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 product-col">
								      	<div class="product-block" itemtype="http://schema.org/Product" itemscope>
									        <?php if ($product['thumb']) { ?>
									        <div class="image">
									        	 <?php if (!$product['special']) { ?><span class="product-label product-label-special"><span><?php echo $text_sale?></span></span><?php }?>
									        	<a class="img" itemprop="url" href="<?php echo $product['href']; ?>">
									        		<img class="img-responsive" itemprop="image"  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
									        	</a>
									        	<div class="price-quick price clearfix text-center" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
														  				
									  				<?php 
								  					if ($product['price']) 
								  					{
								  						if (!$product['special']) 
								  						{
									  				?>
									  				<span class="special-price"><?php echo $product['price'];?></span>
									  				<meta content="<?php echo $product['price'];?>" itemprop="price">
													
									  				<?php 
																
								  						} 
								  						else 
								  						{ 
								  					?>
								  						<span class="price-new"><?php echo $product['special']; ?></span>
														<span class="price-old"><?php echo $product['price']; ?></span>
														<meta content="<?php echo $product['special']; ?>" itemprop="price"> 
								  					<?php 
								  						} 
								  					}?>
									  				<meta content="<?php echo $this->session->data['currency']?>" itemprop="priceCurrency">
									  			</div><!-- end price -->
									  			<div class="right">		
													<div class="action hidden-xs">
														<div>
															<div class="quick-view col-lg-6 col-md-3 col-xs-3">
																<a class="pav-colorbox" href="<?php echo $product['href2']; ?>" title="<?php echo $text_quickview?>">
																	<span class="hidden-md hidden-sm hidden-xs"><?php echo $text_quickview?></span>
																</a>
															</div>	
															<div class="col-lg-6 col-md-9 col-xs-9 btn-action">
																
																<div class="zoom">
																	<a href="<?php echo $product['image']; ?>" class="info-view colorbox product-zoom cboxElement" title="Zoom image"></a>
																</div>	
																<div class="compare">			
																	<a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $text_addcompare?>">
																	<span><?php echo $text_addcompare?></span>
																	</a>	
																</div>	
																<div class="wishlist">
																	<a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $text_addwishlist?>">
																	<span><?php echo $text_addwishlist?></span>
																	</a>	
																</div>	
																<!-- zoom image-->
																
															</div>
														</div>
													</div>		 
												</div><!-- end right -->
									        </div>
									        <?php } ?>
									        <div class="product-meta">		  
												<div class="left">
													<div class="rating">
														<span><img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/stars-<?php  if ($product['rating'])echo $product['rating'];else echo 0; ?>.png" alt="2"></span>
													</div>
													
													<h3 class="name" itemprop="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
													<div class="clearfix"></div>
													
													<p class="description" itemprop="description"><?php echo strip_tags($product['description']); ?></p>
													
													
													<div class="bottom">
														
														<div class="wrap-hover">
															<div class="cart">						
																<button onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-shopping-cart btn-outline-default">
																	<span class="hidden-md hidden-sm hidden-xs"><?php echo $text_addcart;?></span>
																	<span class="hidden-lg"><i class="fa fa-shopping-cart"></i></span>
																</button>
															</div>
															<div class="price clearfix text-center" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
																<?php 
											  					if ($product['price']) 
											  					{
											  						if (!$product['special']) 
											  						{
												  				?>
												  				<span class="special-price"><?php echo $product['price'];?></span>
												  				<meta content="<?php echo $product['price'];?>" itemprop="price">
																
												  				<?php 
																			
											  						} 
											  						else 
											  						{ 
											  					?>
											  						<span class="price-new"><?php echo $product['special']; ?></span>
																	<span class="price-old"><?php echo $product['price']; ?></span>
																	<meta content="<?php echo $product['special']; ?>" itemprop="price"> 
											  					<?php 
											  						} 
											  					}?>
															</div>
														</div>
														
													</div>	
												</div> 
											</div>
									      
								      	</div>
								      </div>
							      <?php
						    		if($i%4==3)
						    		{
						    			echo '</div></div>';
						    		}
						    		$i++;
							    ?>
							    <?php } ?>
							     <script type="text/javascript">
									$('.box-content .item:first').addClass('active');
									$('.box-content').carousel({interval:true})
								</script>
							    </div>
							  </div>
							</div>
						</div><!-- end product relate -->
						<?php } ?>
					<?php echo $content_bottom; ?>
				</div>
			</section>
		</div><!-- end row -->
		<?php if( $SPAN[2] ){ ?>
			<aside class="col-lg-<?php echo $SPAN[2];?> col-md-<?php echo $SPAN[2];?> offcanvas-siderbars" id="oc-column-right">	
				<?php echo $column_right; ?>
			</aside>
		<?php } ?>
	</div>
</section>
  <?php if ($products) { ?>
  
  <?php } ?>
  <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
 </div>
 <script type="text/javascript" src=" catalog/view/javascript/jquery/elevatezoom/elevatezoom-min.js"></script>
<script type="text/javascript">
			
		$("#image").elevateZoom({gallery:'image-additional-carousel', cursor: 'pointer', galleryActiveClass: 'active'}); 
		 
</script>
 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});
    
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 

<?php echo $footer; ?>