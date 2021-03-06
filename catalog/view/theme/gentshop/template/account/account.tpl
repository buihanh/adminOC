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
				<div class="col-lg-4 col-sm-4 col-xs-12">
					<h2><?php echo $text_my_account; ?></h2>
					  <div class="content">
					    <ul class="my-account">
					      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
					      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
					      <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
					      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
					    </ul>
					  </div>
				</div>
				<div class="col-lg-4 col-sm-4 col-xs-12">
					<h2><?php echo $text_my_orders; ?></h2>
					  <div class="content">
					    <ul class="my-account">
					      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
					      <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
					      <?php if ($reward) { ?>
					      <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
					      <?php } ?>
					      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
					      <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
					      <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
					    </ul>
					  </div>
				</div>
				<div class="col-lg-4 col-sm-4 col-xs-12">
					<h2><?php echo $text_my_newsletter; ?></h2>
					  <div class="content">
					    <ul class="my-account">
					      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
					    </ul>
					  </div>
				</div>
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