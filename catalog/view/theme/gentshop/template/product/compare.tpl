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
		<section class="col-lg-<?php echo $SPAN[1];?> col-md-<?php echo $SPAN[1];?> main-column">
			<div id="content">
				<div class="table-responsive">
					<table class="compare-info table table-bordered">
					<thead>
					<tr>
					<td class="compare-product" colspan="<?php echo count($products) + 1; ?>"><?php echo $text_product; ?></td>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td><?php echo $text_name; ?></td>
					<?php foreach ($products as $product) { ?>
					<td class="name"><a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a></td>
					<?php } ?>
					</tr>
					<tr>
					<td><?php echo $text_image; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><?php if ($products[$product['product_id']]['thumb']) { ?>
					<img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" />
					<?php } ?></td>
					<?php } ?>
					</tr>
					<tr>
					<td><?php echo $text_price; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><?php if ($products[$product['product_id']]['price']) { ?>
					<?php if (!$products[$product['product_id']]['special']) { ?>
					<?php echo $products[$product['product_id']]['price']; ?>
					<?php } else { ?>
					<span class="price-old"><?php echo $products[$product['product_id']]['price']; ?></span> <span class="price-new"><?php echo $products[$product['product_id']]['special']; ?></span>
					<?php } ?>
					<?php } ?></td>
					<?php } ?>
					</tr>
					<tr>
					<td><?php echo $text_model; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><?php echo $products[$product['product_id']]['model']; ?></td>
					<?php } ?>
					</tr>
					<tr>
					<td><?php echo $text_manufacturer; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
					<?php } ?>
					</tr>
					<tr>
					<td><?php echo $text_availability; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><?php echo $products[$product['product_id']]['availability']; ?></td>
					<?php } ?>
					</tr>
					<?php if ($review_status) { ?>
					<tr>
					<td><?php echo $text_rating; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/stars-<?php echo $products[$product['product_id']]['rating']; ?>.png" alt="<?php echo $products[$product['product_id']]['reviews']; ?>" /><br />
					<?php echo $products[$product['product_id']]['reviews']; ?></td>
					<?php } ?>
					</tr>
					<?php } ?>
					<tr>
					<td><?php echo $text_summary; ?></td>
					<?php foreach ($products as $product) { ?>
					<td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
					<?php } ?>
					</tr>
					<tr>
					<td><?php echo $text_weight; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><?php echo $products[$product['product_id']]['weight']; ?></td>
					<?php } ?>
					</tr>
					<tr>
					<td><?php echo $text_dimension; ?></td>
					<?php foreach ($products as $product) { ?>
					<td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
					<?php } ?>
					</tr>
					</tbody>
					<?php foreach ($attribute_groups as $attribute_group) { ?>
					<thead>
					<tr>
					<td class="compare-attribute" colspan="<?php echo count($products) + 1; ?>"><?php echo $attribute_group['name']; ?></td>
					</tr>
					</thead>
					<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
					<tbody>
					<tr>
					<td><?php echo $attribute['name']; ?></td>
					<?php foreach ($products as $product) { ?>
					<?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
					<td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
					<?php } else { ?>
					<td></td>
					<?php } ?>
					<?php } ?>
					</tr>
					</tbody>
					<?php } ?>
					<?php } ?>
					<tr>
					<td></td>
					<?php foreach ($products as $product) { ?>
					<td><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button btn btn-default" /></td>
					<?php } ?>
					</tr>
					<tr>
					<td></td>
					<?php foreach ($products as $product) { ?>
					<td class="remove"><a href="<?php echo $product['remove']; ?>" class="button btn btn-default"><?php echo $button_remove; ?></a></td>
					<?php } ?>
					</tr>
					</table>
				</div>
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