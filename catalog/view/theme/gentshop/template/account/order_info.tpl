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
				<div clas="wrapper no-margin">
					<table class="list">
					    <thead>
					      <tr>
					        <td class="left" colspan="2"><?php echo $text_order_detail; ?></td>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td class="left" style="width: 50%;"><?php if ($invoice_no) { ?>
					          <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
					          <?php } ?>
					          <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
					          <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
					        <td class="left" style="width: 50%;"><?php if ($payment_method) { ?>
					          <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
					          <?php } ?>
					          <?php if ($shipping_method) { ?>
					          <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
					          <?php } ?></td>
					      </tr>
					    </tbody>
					  </table>
					  <table class="list">
					    <thead>
					      <tr>
					        <td class="left"><?php echo $text_payment_address; ?></td>
					        <?php if ($shipping_address) { ?>
					        <td class="left"><?php echo $text_shipping_address; ?></td>
					        <?php } ?>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td class="left"><?php echo $payment_address; ?></td>
					        <?php if ($shipping_address) { ?>
					        <td class="left"><?php echo $shipping_address; ?></td>
					        <?php } ?>
					      </tr>
					    </tbody>
					  </table>
					  <table class="list">
					    <thead>
					      <tr>
					        <td class="left"><?php echo $column_name; ?></td>
					        <td class="left"><?php echo $column_model; ?></td>
					        <td class="right"><?php echo $column_quantity; ?></td>
					        <td class="right"><?php echo $column_price; ?></td>
					        <td class="right"><?php echo $column_total; ?></td>
					        <?php if ($products) { ?>
					        <td style="width: 1px;"></td>
					        <?php } ?>
					      </tr>
					    </thead>
					    <tbody>
					      <?php foreach ($products as $product) { ?>
					      <tr>
					        <td class="left"><?php echo $product['name']; ?>
					          <?php foreach ($product['option'] as $option) { ?>
					          <br />
					          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
					          <?php } ?></td>
					        <td class="left"><?php echo $product['model']; ?></td>
					        <td class="right"><?php echo $product['quantity']; ?></td>
					        <td class="right"><?php echo $product['price']; ?></td>
					        <td class="right"><?php echo $product['total']; ?></td>
					        <td class="right"><a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/default/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a></td>
					      </tr>
					      <?php } ?>
					      <?php foreach ($vouchers as $voucher) { ?>
					      <tr>
					        <td class="left"><?php echo $voucher['description']; ?></td>
					        <td class="left"></td>
					        <td class="right">1</td>
					        <td class="right"><?php echo $voucher['amount']; ?></td>
					        <td class="right"><?php echo $voucher['amount']; ?></td>
					        <?php if ($products) { ?>
					        <td></td>
					        <?php } ?>
					      </tr>
					      <?php } ?>
					    </tbody>
					    <tfoot>
					      <?php foreach ($totals as $total) { ?>
					      <tr>
					        <td colspan="3"></td>
					        <td class="right"><b><?php echo $total['title']; ?>:</b></td>
					        <td class="right"><?php echo $total['text']; ?></td>
					        <?php if ($products) { ?>
					        <td></td>
					        <?php } ?>
					      </tr>
					      <?php } ?>
					    </tfoot>
					  </table>
					  <?php if ($comment) { ?>
					  <table class="list">
					    <thead>
					      <tr>
					        <td class="left"><?php echo $text_comment; ?></td>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td class="left"><?php echo $comment; ?></td>
					      </tr>
					    </tbody>
					  </table>
					  <?php } ?>
					  <?php if ($histories) { ?>
					  <h2><?php echo $text_history; ?></h2>
					  <table class="list">
					    <thead>
					      <tr>
					        <td class="left"><?php echo $column_date_added; ?></td>
					        <td class="left"><?php echo $column_status; ?></td>
					        <td class="left"><?php echo $column_comment; ?></td>
					      </tr>
					    </thead>
					    <tbody>
					      <?php foreach ($histories as $history) { ?>
					      <tr>
					        <td class="left"><?php echo $history['date_added']; ?></td>
					        <td class="left"><?php echo $history['status']; ?></td>
					        <td class="left"><?php echo $history['comment']; ?></td>
					      </tr>
					      <?php } ?>
					    </tbody>
					  </table>
					  <?php } ?>
					  <div class="buttons">
					    <div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-outline"><?php echo $button_continue; ?></a></div>
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