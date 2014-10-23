<?php 
	/******************************************************
	 * @package Pav Megamenu module for Opencart 1.5.x
	 * @version 1.1
	 * @author http://www.pavothemes.com
	 * @copyright	Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
	 * @license		GNU General Public License version 2
	*******************************************************/

	require_once( DIR_TEMPLATE.$this->config->get('config_template')."/development/libs/framework.php" );
	$themeConfig = (array)$this->config->get('themecontrol');
	$themeName =  $this->config->get('config_template');
	$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );
	$LANGUAGE_ID = $this->config->get( 'config_language_id' );  
?>
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ltr">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/font.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/typo.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/pavproducttabs.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/pavnewsletter.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/colorbox.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.cookie.js" ></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/javascript/common.js"></script>


<script type="text/javascript" src="catalog/view/javascript/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.themepunch.plugins.min.js" ></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.themepunch.revolution.min.js" ></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.colorbox-min.js" ></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body id="offcanvas-container" class="keep-header offcanvas-container layout-fullwidth" id="offcanvas-container">
<section id="page" class="offcanvas-pusher" role="main">
<!-- <section class="intro-landingpage hidden-sm hidden-xs">
	<div class="bg-glare"></div>
	<div class="line-loader"><div class="loader"></div></div>
</section> -->
	<div class="main-page">
<section id="header-top" class="">
	<section id="topbar" class="topbar-v1">
		<div class="container">
			<div class="row">
				<div class="show-desktop col-xs-12">
					<div class="quick-access pull-left">
						<div class="login links hidden-xs hidden-sm">
							<?php if (!$logged) { ?>
							<?php echo $text_welcome; ?>
							<?php } else { ?>
							<?php echo $text_logged; ?>
							<?php } ?>
						</div>
						<div class="btn-group">
							<div class="dropdown-toggle btn-theme-normal">
								<i class="fa fa-cog"></i>
								<span class="text-label">Setting</span>
								<span class="fa fa-angle-down"></span>
							</div>
							<div class="quick-localisation dropdown-menu tree-menu">
								<?php echo $language; ?>
								<?php echo $currency; ?>
							</div>
						</div>
						<div class="btn-group">
							<div class="dropdown-toggle btn-theme-normal">
								<i class="fa fa-cog"></i>
								<span class="text-label">Account</span>
								<span class="fa fa-angle-down"></span>
							</div>
							<div class="quick-localisation dropdown-menu tree-menu">
							
								<ul class="links">
									<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
									<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
								</ul>
							</div>
						</div>
					</div><!-- end left -->
					<div class="quick-action pull-right">
						<?php echo $cart; ?>
						<div class="btn-group search-focus">
							<div id="dropdown-toggle btn-theme-normal">
								<span class="text-label"><?php echo $text_search; ?></span>
							</div>
						</div>
					</div><!-- end right -->
				</div>
			</div>
		</div>
	</section><!-- end top bar-->
	<section class="main-menu mainnav-v1">
		<div class="nav-search visible">
			<div class="input-group">
				<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="form-control search-control" />
				<span class="input-group-addon button-close">
					<span class="fa fa-times"></span>
				</span>
			</div>
		</div><!-- end search box -->
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-2 col-xs-10 logo inner">
					<div id="logo-theme" class="logo-store">
						<?php if ($logo) { ?>
						<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
						<?php } ?>
					</div>
				</div><!-- end col logo -->
				
				<div id="pav-mainnav" class="col-lg-9 col-md-9 col-sm-10 col-xs-2">
					<?php 

			/**
			* Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
			*/

			$modules = $helper->getModulesByPosition( 'mainmenu' ); 
			if( count($modules) && !empty($modules) ){ 

				?>

				<?php foreach ($modules as $module) { ?>
				<?php echo $module; ?>
				<?php } ?>

				<?php } elseif ($categories) {  ?>
					<div class="pav-megamenu">
						<div class="navbar navbar-default">
							<div class="mainmenutop" class="megamenu" role="navigation">
								<div class="navbar-header">
									<a class="navbar-toggle hidden-lg hidden-md" href="javascript:;" data-target=".navbar-collapse" data-toggle="collapse">
										<span class="fa fa-bars"></span>		        
									</a>
									<div class="collapse navbar-collapse navbar-ex1-collapse hidden-sm hidden-xs">
										<ul class="nav navbar-nav megamenu">
											<?php foreach ($categories as $category_lv1) { ?>
											<li class="<?php if ($category_lv1['children']) echo "dropdown parent"; ?>">
												<a href="<?php echo $category_lv1['href']; ?>">
													<span class="menu-title"><?php echo $category_lv1['name']; ?></span>
													<?php if ($category_lv1['children']){?>
													<b class="caret"></b>
													<?php }?>
												</a>
											      <?php 
											      	if ($category_lv1['children']) {
											      		for ($i=0;$i<count($category_lv1['children']);$i++)
														{
															$tmp=explode('_',$category_lv1['children'][$i]['href']);
															$id=$tmp[1];
															$children_data=array();
															$children=$this->model_catalog_category->getCategories($id);
															foreach ($children as $item) {
																
																$data = array(
																	'filter_category_id'  => $item['category_id'],
																	'filter_sub_category' => true
																);
											
																
																$children_data[] = array(
																	'name'  => $item['name'],
																	'href'  => $this->url->link('product/category', 'path=' . $id . '_' . $item['category_id'])
																);						
															}
															$category_lv1['children'][$i]['children']=$children_data;
														}	
											      ?>
											      <div class="dropdown-menu" <?php if($category_lv1['column']>1){echo 'style="width:870px"';}?>>
														<div class="dropdown-menu-inner">
															<div class="row">
																<?php if($category_lv1['column']>1){?>
																<?php for ($i = 0; $i < count($category_lv1['children']);$i++) { ?>
																	<div class="mega-col col-xs-12 col-sm-12 col-md-2" data-type="menu">
																		<div class="mega-col-inner">
																			<div class="pavo-widget" id="pavowid-<?php echo $i?>">
																				<h3 class="widget-title"><span><?php echo $category_lv1['children'][$i]['name']?></span></h3>
																				<div class="widget-html">
																					<div class="widget-inner">
																						
																						<ul>
																							<?php foreach($category_lv1['children'][$i]['children'] as $item){?>
																							<li><a href="<?php echo $item['href']; ?>"><span class="menu-title"><?php echo $item['name']; ?></span></a></li>
																							<?php }?>
																						</ul>
																						
																					</div>
																				</div>
																			</div>
																		</div>
																	</div><!-- end many column -->
																<?php }?>
																<?php }else{?>
																<div class="mega-col col-xs-12 col-sm-12 col-md-12" data-type="menu">
																	<div class="mega-col-inner">
																		<ul>
																		<?php foreach ($category_lv1['children'] as $category_lv2) { ?>
																				<li class="<?php if($category_lv2['children']) echo 'parent dropdown-submenu'?>">
																					<a href="<?php echo $category_lv2['href']; ?>" <?php if($category_lv2['children']) echo 'class="dropdown-toggle" data-toggle="dropdown"' ?>>
																						<span class="menu-title"><?php echo $category_lv2['name']; ?></span>
																						<?php if ($category_lv2['children']){?>
																						<b class="caret"></b>
																						<?php }//print_r($category_lv2['children']);?>
																					</a>
																					<?php
																						if($category_lv2['children']){
																					?>
																					
																					<div class="dropdown-menu level2">
																						<div class="dropdown-menu-inner">
																							<div class="row">
																								<div class="mega-col col-xs-12 col-sm-12 col-md-12" data-type="menu">
																									<div class="mega-col-inner">
																										<ul>
																											<?php foreach($category_lv2['children'] as $lv3){?>
																											<li>
																												<a href="<?php echo $lv3['href']; ?>">
																													<span class="menu-title"><?php echo $lv3['name']; ?></span>
																												</a>
																											</li>
																											<?php }?>
																										</ul>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																					<?php }?>
																				</li>
																		<?php }?>
																		</ul><!-- end lv 2 -->
																		<!--<?php for ($i = 0; $i < count($category_lv1['children']);) { ?>
																        <ul>
																	          <?php $j = $i + ceil(count($category_lv1['children']) / $category_lv1['column']); ?>
																	          <?php for (; $i < $j; $i++) { ?>
																	          <?php if (isset($category_lv1['children'][$i])) { ?>
																	          <li>
																	          	<a href="<?php echo $category_lv1['children'][$i]['href']; ?>">
																	          		<?php echo $category_lv1['children'][$i]['name']; ?>
																	          	</a>
																	          </li>
																	          <?php } ?>
																	          <?php } ?>
																        </ul>
																        <?php } ?>-->
																	</div>
																</div>
																<?php }?>
													        </div>
												        </div>
											      </div>
											      <?php } ?>
										    </li>
									    <?php } ?>
									  </ul><!-- end lv 1 -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<?php }?>
				</div><!-- end main nav -->
				
			</div>
		</div>
	</section><!-- end menu -->
</section><!-- end header -->
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<section id="sys-notification">
	<div class="container"><div id="notification"></div></div>
</section>
<?php
/**
 * Slideshow modules
 */
$modules = $helper->getModulesByPosition( 'slideshow' );
$ospans = array(1=>12, 2=>6); 
if( $modules ){
$cols = isset($config['block_slideshow'])&& $config['block_slideshow']?(int)$config['block_slideshow']:count($modules);	
$class = $helper->calculateSpans( $ospans, $cols );
?>
<section class="slideshow" id="pavo-slideshow">
	<div class="row">
		<?php $j=1;foreach ($modules as $i =>  $module) {  ?>
			<?php if(  $i++%$cols == 0 || count($modules)==1  ){  $j=1;?><div class="row"><?php } ?>	
			<div class="<?php echo $class[$j];?> col-sm-12 col-xs-12"><?php echo $module; ?></div>
			<?php if( $i%$cols == 0 || $i==count($modules) ){ ?></div><?php } ?>	
		<?php  $j++;  } ?>
	</div>
</section>
<?php } ?>
<?php
/**
 * Showcase modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$modules = $helper->getModulesByPosition( 'showcase' ); 
$ospans = array();

if( count($modules) ){
$cols = isset($config['block_showcase'])&& $config['block_showcase']?(int)$config['block_showcase']:count($modules);	
$class = $helper->calculateSpans( $ospans, $cols );
?>
<section class="pav-showcase" id="pavo-showcase">
	<div class="container">
		<?php $j=1;foreach ($modules as $i =>  $module) {  ?>
		<?php if(  $i++%$cols == 0 || count($modules)==1  ){  $j=1;?><div class="row"><?php } ?>	
		<div class="<?php echo $class[$j];?>"><?php echo $module; ?></div>
		<?php if( $i%$cols == 0 || $i==count($modules) ){ ?></div><?php } ?>	
		<?php  $j++;  } ?>	
	</div>
</section>
<?php } ?>
