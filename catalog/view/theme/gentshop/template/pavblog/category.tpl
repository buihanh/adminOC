
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
				<header class="pav-header">
					<!--<h1><?php echo $heading_title; ?></h1>-->
					<!--<a class="rss-wrapper" href="<?php echo $category_rss;?>"><span class="icon-rss">Rss</span></a>-->	
				</header> 
				<section class="pav-category wrapper blog-wrapper main-column">
					<?php if(count($children)){?>
						<div class="pav-children no-margin">
							<h3><?php echo $this->language->get('text_children');?></h3>
							<div class="children-wrap">
								
								<?php 
								$cols = ceil(12/(int)$config->get('children_columns'));
								foreach( $children as $key => $sub )  { $key = $key + 1;?>
									<div class=" col-lg-<?php echo $cols;?> col-sm-<?php echo $cols;?> col-xs-12">
										<div class="children-inner">
											<h4>
											<a href="<?php echo $sub['link']; ?>" title="<?php echo $sub['title']; ?>"><?php echo $sub['title']; ?> (<?php echo $sub['count_blogs']; ?>)</a> 
											
											</h4>
											<?php if( $sub['thumb'] ) { ?>
												<img src="<?php echo $sub['thumb'];?>"/>
											<?php } ?>
											<div class="sub-description">
											<?php echo $sub['description']; ?>
											</div>
										</div>
									</div>
									<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
										<div class="clearfix"></div>
									<?php } ?>
								<?php } ?>
							</div>
						</div>
					<?php }?><!-- end children -->
					<div class="pav-blogs">
						<?php
						$cols = ceil(12/$config->get('cat_columns_leading_blog'));
						if( count($leading_blogs) ) { ?>
							<div class="leading-blogs row">
								<?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
								<div class="col-lg-<?php echo $cols;?> col-sm-<?php echo $cols;?> col-xs-<?php echo $cols;?>">
								<?php require( '_item.tpl' ); ?>
								</div>
								<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
									<div class="clearfix"></div>
								<?php } ?>
								<?php } ?>
							</div>
						<?php } ?>
			
						<?php
							$cols =ceil(12/$config->get('cat_columns_secondary_blogs'));
							if ( count($secondary_blogs) ) { ?>
							<div class="secondary row">
								
								<?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
								<div class="col-lg-<?php echo $cols;?> col-sm-<?php echo $cols;?> col-xs-<?php echo $cols;?>">
								<?php require( '_item.tpl' ); ?>
								</div>
								<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
									<div class="clearfix"></div>
								<?php } ?>
								<?php } ?>
							</div>
						<?php } ?>
						<?php if( $total ) { ?>	
						<div class="pav-pagination clearfix"><?php echo $pagination;?></div>
						<?php } ?>
					</div><!-- end blog -->
				</section>
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