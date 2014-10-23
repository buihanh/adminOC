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
					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
				    <h2><?php echo $text_password; ?></h2>
				    <div class="content">
				      <table class="form">
				        <tr>
				          <td><span class="required">*</span> <?php echo $entry_password; ?></td>
				          <td><input class="form-control" type="password" name="password" value="<?php echo $password; ?>" />
				            <?php if ($error_password) { ?>
				            <span class="error"><?php echo $error_password; ?></span>
				            <?php } ?></td>
				        </tr>
				        <tr>
				          <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
				          <td><input class="form-control" type="password" name="confirm" value="<?php echo $confirm; ?>" />
				            <?php if ($error_confirm) { ?>
				            <span class="error"><?php echo $error_confirm; ?></span>
				            <?php } ?></td>
				        </tr>
				      </table>
				    </div>
				    <div class="buttons">
				      <div class="left"><a href="<?php echo $back; ?>" class="button btn btn-outline"><?php echo $button_back; ?></a></div>
				      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button btn btn-outline" /></div>
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