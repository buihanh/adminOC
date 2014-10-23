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
				  <div class="wishlist-info table-responsive">
				    <table class="table table-bordered table-hover">
				      <thead>
				        <tr>
				          <td class="image"><?php echo $column_image; ?></td>
				          <td class="name"><?php echo $column_name; ?></td>
				          <td class="model"><?php echo $column_model; ?></td>
				          <td class="stock"><?php echo $column_stock; ?></td>
				          <td class="price"><?php echo $column_price; ?></td>
				          <td class="action"><?php echo $column_action; ?></td>
				        </tr>
				      </thead>
				      <?php foreach ($products as $product) { ?>
				      <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
				        <tr>
				          <td class="image"><?php if ($product['thumb']) { ?>
				            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
				            <?php } ?></td>
				          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
				          <td class="model"><?php echo $product['model']; ?></td>
				          <td class="stock"><?php echo $product['stock']; ?></td>
				          <td class="price"><?php if ($product['price']) { ?>
				            <div class="price">
				              <?php if (!$product['special']) { ?>
				              <?php echo $product['price']; ?>
				              <?php } else { ?>
				              <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
				              <?php } ?>
				            </div>
				            <?php } ?></td>
				          <td class="action"><img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
				        </tr>
				      </tbody>
				      <?php } ?>
				    </table>
				  </div>
				  <div class="buttons">
				    <div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-outline"><?php echo $button_continue; ?></a></div>
				  </div>
				  <?php } else { ?>
				  <div class="content"><?php echo $text_empty; ?></div>
				  <div class="buttons">
				    <div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-outline"><?php echo $button_continue; ?></a></div>
				  </div>
				  <?php } ?>
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