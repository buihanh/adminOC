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
				<div class="col-lg-6 col-sm-6 col-xs-12">
					<div class="inner no-margin">
				      <h2><?php echo $text_new_customer; ?></h2>
				      <div class="content">
				        <p><b><?php echo $text_register; ?></b></p>
				        <p><?php echo $text_register_account; ?></p>
				        <a href="<?php echo $register; ?>" class="button btn btn-outline"><?php echo $button_continue; ?></a></div>
				    </div>
				</div>
				<div class="col-lg-6 col-sm-6 col-xs-12">
					<div class="inner underline no-margin">
				      <h2><?php echo $text_returning_customer; ?></h2>
				      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
				        <div class="content">
				          <p><?php echo $text_i_am_returning_customer; ?></p>
				          <div class="form-group">
				          	<label class="control-label" for="email"><?php echo $entry_email; ?></label>
				          	<input class="form-control" type="text" name="email" value="<?php echo $email; ?>" />
				          </div>
				          
				          <div class="form-group">
				          	<label class="control-label" for="password"><?php echo $entry_password; ?></label>
				          	<input class="form-control" type="password" name="password" value="<?php echo $password; ?>" />
				          	<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
				          </div>
				          
				          <input type="submit" value="<?php echo $button_login; ?>" class="button btn btn-outline" />
				          <?php if ($redirect) { ?>
				          <input class="form-control" type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
				          <?php } ?>
				        </div>
				      </form>
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