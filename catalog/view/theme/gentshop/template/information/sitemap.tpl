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
					<div class="sitemap-info wrapper">
						<div class="row">
						    <div class="col-lg-6 col-sm-6 col-xs-12">
						    	<div class="inner">
							      <ul>
							        <?php foreach ($categories as $category_1) { ?>
							        <li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
							          <?php if ($category_1['children']) { ?>
							          <ul>
							            <?php foreach ($category_1['children'] as $category_2) { ?>
							            <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
							              <?php if ($category_2['children']) { ?>
							              <ul>
							                <?php foreach ($category_2['children'] as $category_3) { ?>
							                <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
							                <?php } ?>
							              </ul>
							              <?php } ?>
							            </li>
							            <?php } ?>
							          </ul>
							          <?php } ?>
							        </li>
							        <?php } ?>
							      </ul>
							    </div>
						    </div>
						    <div class="col-lg-6 col-sm-6 col-xs-12">
						    	<div class="inner">
							      <ul>
							        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
							        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
							          <ul>
							            <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
							            <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
							            <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
							            <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
							            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
							          </ul>
							        </li>
							        <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
							        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
							        <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
							        <li><?php echo $text_information; ?>
							          <ul>
							            <?php foreach ($informations as $information) { ?>
							            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
							            <?php } ?>
							            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
							          </ul>
							        </li>
							      </ul>
							    </div>
						    </div>
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