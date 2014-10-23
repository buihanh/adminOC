<?php 
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 1.5.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/

require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );
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
	<h1><?php echo $heading_title; ?></h1>
	 <div class="breadcrumb">
	    <?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
	    <?php if($i!=0) {echo " / ";} ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	    <?php $i++;} ?>
	  </div>
</div>
<div class="container">
	<div class="row">
		<?php if( $SPAN[0] ){ ?>
			<aside class="col-lg-<?php echo $SPAN[0];?> col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
				<?php echo $column_left; ?>
			</aside>
		<?php } ?>
		<section class="col-lg-<?php echo $SPAN[1];?> col-md-<?php echo $SPAN[1];?> col-sm-12 col-xs-12">
			<div id="content">
				<?php echo $content_top; ?>
				<?php if ($products) { ?>
				<div class="product-filter clearfix">
					<div class="display">
						<span style="float: left;"><?php echo $text_display; ?></span>
						<a class="list active"><em><?php echo $text_list; ?></em></a> 
						<a class="grid" onclick="display('grid');"><em><?php echo $text_grid; ?></em></a>
					</div>
					<div class="filter-right">
						<div class="product-compare pull-right">
							<a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-default"><?php echo $text_compare; ?></a>
						</div>
						<div class="sort pull-right">
							<span><?php echo $text_sort; ?></span>
							<select class="form-control" onchange="location = this.value;">
							<?php foreach ($sorts as $sorts) { ?>
							<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
							<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
							<?php } ?>
							<?php } ?>
							</select>
						</div>
						<div class="limit pull-right">
							<span><?php echo $text_limit; ?></span>
							<select class="form-control" onchange="location = this.value;">
							<?php foreach ($limits as $limits) { ?>
							<?php if ($limits['value'] == $limit) { ?>
							<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
							<?php } ?>
							<?php } ?>
							</select>
						</div>
					</div>
				</div><!-- end filter -->
				<div class="product-compare">
					<a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
				</div><!-- END COMPARE -->
				<div class="product-list">
					<div class="products-block">
						<?php $i=0; foreach ($products as $product) { ?>
							<?php if($i%3==0){?>
								<div class="row products-row">
							<?php }?>
								<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product-col">
									<div class="product-block" itemtype="http://schema.org/Product" itemscope>
										<div class="image swap">
											<?php if($product['special']){?>
												<span class="product-label product-label-special"><span>Sale</span></span>
											<?php }?>
											<?php if ($product['thumb']) { ?>
												<a class="img" itemprop="url" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
													<img class="img-responsive" itemprop="image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
												</a>
												<a class="hover-image" itemprop="url" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
													<img class="img-responsive" itemprop="image" src="<?php echo $product['thumb2']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
												</a>
											<?php } ?>
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
										</div><!-- end image swap -->
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
															<button onclick="addToCart('<?php echo $product['product_id']; ?>')" class="btn btn-shopping-cart btn-outline-default">
																<span class="hidden-md hidden-sm hidden-xs"><?php echo $button_cart;?></span>
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
										</div><!-- end product meta -->
									</div><!-- end product block -->
								</div><!-- end product col -->
							<?php if($i%3==2){?>
								</div>
							<?php }?>
						<?php $i++;} ?>
					</div>
				</div><!-- end products grid -->
				<?php }?>
				<?php echo $content_bottom; ?>
			</div>
		</section>
		<?php if( $SPAN[2] ){ ?>
			<aside class="col-lg-<?php echo $SPAN[2];?> col-md-<?php echo $SPAN[2];?> col-sm-12 col-xs-12">	
				<?php echo $column_right; ?>
			</aside>
		<?php } ?>
	</div>
</div>
</section>
<?php echo $footer; ?>