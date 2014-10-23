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
					<table class="table list">
					    <thead>
					      <tr>
					        <td class="left" colspan="2"><?php echo $text_recurring_detail; ?></td>
					      </tr>
					    </thead>
					    <tbody>
					    <tr>
					        <td class="left" style="width: 50%;">
					            <p style="margin:5px;"><b><?php echo $text_recurring_id; ?></b> #<?php echo $profile['order_recurring_id']; ?></p>
					            <p style="margin:5px;"><b><?php echo $text_date_added; ?></b> <?php echo $profile['created']; ?></p>
					            <p style="margin:5px;"><b><?php echo $text_status; ?></b> <?php echo $status_types[$profile['status']]; ?></p>
					            <p style="margin:5px;"><b><?php echo $text_payment_method; ?></b> <?php echo $profile['payment_method']; ?></p>
					        </td>
					        <td class="left" style="width: 50%; vertical-align: top;">
					            <p style="margin:5px;"><b><?php echo $text_product; ?></b> <a href="<?php echo $profile['product_link']; ?>"><?php echo $profile['product_name']; ?></a></p>
					            <p style="margin:5px;"><b><?php echo $text_quantity; ?></b> <?php echo $profile['product_quantity']; ?></p>
					            <p style="margin:5px;"><b><?php echo $text_order; ?></b> <a href="<?php echo $profile['order_link']; ?>">#<?php echo $profile['order_id']; ?></a></p>
					        </td>
					    </tr>
					    </tbody>
					  </table>
					    <table class="table list">
					        <thead>
					            <tr>
					                <td class="left"><?php echo $text_recurring_description; ?></td>
					                <td class="left"><?php echo $text_ref; ?></td>
					            </tr>
					        </thead>
					        <tbody>
					            <tr>
					                <td class="left" style="width: 50%;"><p style="margin:5px;"><?php echo $profile['profile_description']; ?></p></td>
					                <td class="left" style="width: 50%;"><p style="margin:5px;"><?php echo $profile['profile_reference']; ?></p></td>
					            </tr>
					        </tbody>
					  </table>
					  <h2><?php echo $text_transactions; ?></h2>
					  <table class="table list">
					    <thead>
					      <tr>
					        <td class="left"><?php echo $column_created; ?></td>
					        <td class="center"><?php echo $column_type; ?></td>
					        <td class="right"><?php echo $column_amount; ?></td>
					      </tr>
					    </thead>
					    <tbody>
					      <?php
					
					      if(!empty($profile['transactions'])){
					      foreach ($profile['transactions'] as $transaction) {
					
					      ?>
					      <tr>
					        <td class="left"><?php echo $transaction['created']; ?></td>
					        <td class="center"><?php echo $transaction_types[$transaction['type']]; ?></td>
					        <td class="right"><?php echo $transaction['amount']; ?></td>
					      </tr>
					      <?php } }else{ ?>
					
					      <tr>
					          <td colspan="3" class="center"><?php echo $text_empty_transactions; ?></td>
					      </tr>
					
					    <?php } ?>
					    </tbody>
					  </table>
					
					  <div class="buttons">
					    <div class="right">
					        <?php if($cancel_link){ ?>
					            <a href="<?php echo $cancel_link; ?>" class="button btn btn-outline" onclick="return confirmCancel();"><?php echo $button_cancel_profile; ?></a>
					        <?php } ?>
					        <a href="<?php echo $continue; ?>" class="button btn btn-outline"><?php echo $button_continue; ?></a>
					    </div>
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
<script type="text/javascript"><!--
    function confirmCancel(){
        var confirmed = confirm("<?php echo $text_confirm_cancel; ?>");
        return confirmed;
    }
//--></script>