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
					<?php if ($profiles) { ?>
				    <table class="table list">
				        <thead>
				        <tr>
				            <td class="left"><?php echo $column_profile_id; ?></td>
				            <td class="left"><?php echo $column_created; ?></td>
				            <td class="left"><?php echo $column_status; ?></td>
				            <td class="left"><?php echo $column_product; ?></td>
				            <td class="right"><?php echo $column_action; ?></td>
				        </tr>
				        </thead>
				        <tbody>
				        <?php if ($profiles) { ?>
				        <?php foreach ($profiles as $profile) { ?>
				        <tr>
				            <td class="left">#<?php echo $profile['id']; ?></td>
				            <td class="left"><?php echo $profile['created']; ?></td>
				            <td class="left"><?php echo $status_types[$profile['status']]; ?></td>
				            <td class="left"><?php echo $profile['name']; ?></td>
				            <td class="right"><a href="<?php echo $profile['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></td>
				        </tr>
				        <?php } ?>
				        <?php } else { ?>
				        <tr>
				            <td class="center" colspan="5"><?php echo $text_empty; ?></td>
				        </tr>
				        <?php } ?>
				        </tbody>
				    </table>
				
				  <div class="pagination"><?php echo $pagination; ?></div>
				  <?php } else { ?>
				  <div class="content"><?php echo $text_empty; ?></div>
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