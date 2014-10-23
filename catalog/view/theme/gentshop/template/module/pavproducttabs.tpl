<?php 
/******************************************************
 * @package Pav Product Tabs module for Opencart 1.5.x
 * @version 1.0
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Feb 2012 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/

	$span = 12/$cols; 
	$active = 'latest';
	$id = rand(1,9)+rand();	
?>
					<div class="box producttabs">
					<?php if( !empty($module_description) ) { ?>
					 <div class="module-desc">
						<?php echo $module_description;?>
					 </div>
					 <?php } ?>
					  <div class="tab-nav">
						<ul class="nav nav-theme" id="producttabs<?php echo $id;?>">
							<?php foreach( $tabs as $tab => $products ) { if( empty($products) ){ continue;}  ?>
								 <li><a href="#tab-<?php echo $tab.$id;?>" data-toggle="tab"><?php echo $this->language->get('text_'.$tab)?></a></li>
							<?php } ?>
						</ul>
					  </div>
					  <div class="clearfix"></div>

						<div class="tab-content">
							<?php foreach( $tabs as $tab => $products ) { 
									if( empty($products) ){ continue;}
								?>
								<div class="tab-pane products-rows  tabcarousel<?php echo $id; ?> slide" id="tab-<?php echo $tab.$id;?>">
									
									<?php if( count($products) > $itemsperpage ) { ?>
									<div class="carousel-controls">
									<a class="carousel-control left" href="#tab-<?php echo $tab.$id;?>"   data-slide="prev"></a>
									<a class="carousel-control right" href="#tab-<?php echo $tab.$id;?>"  data-slide="next"></a>
									</div>
									<?php } ?>
									<div class="carousel-inner ">		
									 <?php 
										$pages = array_chunk( $products, $itemsperpage);
									//	echo '<pre>'.print_r( $pages, 1 ); die;
									 ?>	
									  <?php foreach ($pages as  $k => $tproducts ) {   ?>
											<div class="item <?php if($k==0) {?>active<?php } ?>">
												<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
													<?php if( $i%$cols == 1 ) { ?>
													  <div class="row product-row">
													<?php } ?>
														  <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 product-col">
														  		<div class="product-block" itemtype="http://schema.org/Product" itemscope>
														  	
														  			<div class="image swap">
														  				<?php if($product['special']){?>
																			<span class="product-label product-label-special"><span>Sale</span></span>
																		<?php }?>
														  				<a class="img" itemprop="url" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"">
														  					<img class="img-responsive" itemprop="image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['tag']; ?>" />
														  				</a>
														  				<a class="hover-image" href="<?php echo $product['href']; ?>">
														  					<img class="img-responsive" src="<?php echo $product['thumb2']; ?>" alt="<?php echo $product['name']; ?>">
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
																  			</div>
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
																			</div>
														  			</div><!-- end image -->
														  			
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
												  
												  <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
													 </div>
													<?php } ?>
												<?php } //endforeach; ?>
											</div>
									  <?php } ?>
									</div>  
								</div>
							<?php } // endforeach of tabs ?>	
						</div>
					</div>
		

<script>
$(function () {
$('#producttabs<?php echo $id;?> a:first').tab('show');
})
$('.tabcarousel<?php echo $id;?>').carousel({interval:false,auto:false,pause:'hover'});
</script>
