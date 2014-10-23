
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
					<div class="wrapper no-margin">
						<div class="row contact-content">
							<div class="col-lg-4 col-md-4 col-sm-12 hidden-xs">
								<h1><?php echo $heading_title; ?></h1>
								<div class="contact-info">
							      <div class="content">
							      <div class="left">
								      	<div class="media">
								      		<i class="fa fa-home pull-left"></i>
								      		
								      		<div class="media-body">
								      			<?php echo $text_address; ?>
								      			<?php echo $store; ?><br />
								      			<?php echo $address; ?>
								      		</div>
								      	</div>
								      	<div class="media">
								      		<i class="fa fa-phone pull-left"></i>
								      		
								      		<div class="media-body">
								      			 <?php if ($telephone) { ?>
										        <?php echo $text_telephone; ?><br />
										        <?php echo $telephone; ?><br />
										        <br />
										        <?php } ?>
										        
								      		</div>
								      	</div>
								      	<div class="media">
								      		<i class="fa fa-envelope-o pull-left"></i>
								      		<div class="media-body">
								      			<?php if ($fax) { ?>
										        <b><?php echo $text_fax; ?></b><br />
										        <?php echo $fax; ?>
										        <?php } ?>
								      		</div>
								      	</div>
								  </div>
								 </div>
							    </div>
							</div>
							<div class="col-lg-8 col-md-8 col-sm-12">
								<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								    <h2><?php echo $text_contact; ?></h2>
								    <div class="content">
								    <?php echo $entry_name; ?><br />
								    <input type="text" name="name" value="<?php echo $name; ?>" />
								    <br />
								    <?php if ($error_name) { ?>
								    <span class="error"><?php echo $error_name; ?></span>
								    <?php } ?>
								    <br />
								    <?php echo $entry_email; ?><br />
								    <input type="text" name="email" value="<?php echo $email; ?>" />
								    <br />
								    <?php if ($error_email) { ?>
								    <span class="error"><?php echo $error_email; ?></span>
								    <?php } ?>
								    <br />
								    <?php echo $entry_enquiry; ?><br />
								    <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
								    <br />
								    <?php if ($error_enquiry) { ?>
								    <span class="error"><?php echo $error_enquiry; ?></span>
								    <?php } ?>
								    <br />
								    <?php echo $entry_captcha; ?><br />
								    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
								    <br />
								    <img src="index.php?route=information/contact/captcha" alt="" />
								    <?php if ($error_captcha) { ?>
								    <span class="error"><?php echo $error_captcha; ?></span>
								    <?php } ?>
								    </div>
								    <div class="buttons">
								      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button btn btn-outline" /></div>
								    </div>
								  </form>
							</div>
						</div>
					</div>
					<!--<div class="buttons">
						<div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-outline"><?php echo $button_continue; ?></a></div>
					</div>-->
					
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