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
					<p><?php echo $text_description; ?></p>
					  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					    <table class="form">
					      <tr>
					        <td><span class="required">*</span> <?php echo $entry_to_name; ?></td>
					        <td><input type="text" name="to_name" value="<?php echo $to_name; ?>" />
					          <?php if ($error_to_name) { ?>
					          <span class="error"><?php echo $error_to_name; ?></span>
					          <?php } ?></td>
					      </tr>
					      <tr>
					        <td><span class="required">*</span> <?php echo $entry_to_email; ?></td>
					        <td><input type="text" name="to_email" value="<?php echo $to_email; ?>" />
					          <?php if ($error_to_email) { ?>
					          <span class="error"><?php echo $error_to_email; ?></span>
					          <?php } ?></td>
					      </tr>
					      <tr>
					        <td><span class="required">*</span> <?php echo $entry_from_name; ?></td>
					        <td><input type="text" name="from_name" value="<?php echo $from_name; ?>" />
					          <?php if ($error_from_name) { ?>
					          <span class="error"><?php echo $error_from_name; ?></span>
					          <?php } ?></td>
					      </tr>
					      <tr>
					        <td><span class="required">*</span> <?php echo $entry_from_email; ?></td>
					        <td><input type="text" name="from_email" value="<?php echo $from_email; ?>" />
					          <?php if ($error_from_email) { ?>
					          <span class="error"><?php echo $error_from_email; ?></span>
					          <?php } ?></td>
					      </tr>
					      <tr>
					        <td><span class="required">*</span> <?php echo $entry_theme; ?></td>
					        <td><?php foreach ($voucher_themes as $voucher_theme) { ?>
					          <?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
					          <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" />
					          <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
					          <?php } else { ?>
					          <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" />
					          <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
					          <?php } ?>
					          <br />
					          <?php } ?>
					          <?php if ($error_theme) { ?>
					          <span class="error"><?php echo $error_theme; ?></span>
					          <?php } ?></td>
					      </tr>
					      <tr>
					        <td><?php echo $entry_message; ?></td>
					        <td><textarea name="message" cols="40" rows="5"><?php echo $message; ?></textarea></td>
					      </tr>
					      <tr>
					        <td><span class="required">*</span> <?php echo $entry_amount; ?></td>
					        <td><input type="text" name="amount" value="<?php echo $amount; ?>" size="5" />
					          <?php if ($error_amount) { ?>
					          <span class="error"><?php echo $error_amount; ?></span>
					          <?php } ?></td>
					      </tr>
					    </table>
					    <div class="buttons">
					      <div class="right"><?php echo $text_agree; ?>
					        <?php if ($agree) { ?>
					        <input type="checkbox" name="agree" value="1" checked="checked" />
					        <?php } else { ?>
					        <input type="checkbox" name="agree" value="1" />
					        <?php } ?>
					        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
					      </div>
					    </div>
					  </form>
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