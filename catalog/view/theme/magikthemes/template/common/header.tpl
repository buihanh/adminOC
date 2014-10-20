<?php 
/******************************************************
 * @package congnghevietuc Opencart Theme Framework for Opencart 1.5.x
 * @version 1.0
 * @author http://www.congnghevietuc.com
 * @copyright	Copyright (C) Feb 2013 congnghevietuc.com <@emai:congnghevietuc@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/
	$themeConfig = (array)$this->config->get( 'themecontrol' );
	$themeName =  $this->config->get('config_template');
	require_once( DIR_TEMPLATE.$this->config->get('config_template')."/template/libs/module.php" );
	$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );

	/* Add scripts files */
	$helper->addScript( 'catalog/view/javascript/jquery/jquery-1.7.1.min.js' );
	$helper->addScript( 'catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js' );
	$helper->addScript( 'catalog/view/javascript/jquery/ui/external/jquery.cookie.js' );
	$helper->addScript( 'catalog/view/javascript/common.js' );
	$helper->addScript( 'catalog/view/theme/'.$themeName.'/javascript/common.js' );
	$helper->addScript( 'catalog/view/javascript/jquery/bootstrap/bootstrap.min.js' );

?>

<!DOCTYPE html>
<html lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?php echo $title; ?></title>
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=no">
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
<meta name="robots" content="*" />
<link rel="icon" href="favicon.ico" tppabs="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" tppabs="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico" type="image/x-icon" />
<link href="css-family=Open+Sans-300italic,400italic,600italic,700italic,800italic,300,700,800,400,600.css" tppabs="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,300,700,800,400,600" rel='stylesheet' type='text/css'>
<link href="css-family=Open+Sans-200,300,400,500,600,700,800.css" tppabs="http://fonts.googleapis.com/css?family=Open+Sans:200,300,400,500,600,700,800" rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" tppabs="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<script type="text/javascript">
  jQuery(window).scroll(function() {
   if (jQuery(this).scrollTop() > 1){  
       jQuery('nav').addClass("sticky");
   }
   else{
       jQuery('nav').removeClass("sticky");
   }
});
</script>


<script type="text/javascript">
var BLANK_URL = 'http://demo.magikthemes.com/js/blank.html';
var BLANK_IMG = 'spacer.gif'/*tpa=http://demo.magikthemes.com/js/spacer.gif*/;
var SKIN_URL = 'http://demo.magikthemes.com/skin/frontend/rwd/astra/';
</script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/calendar-win2k-1.css" tppabs="http://demo.magikthemes.com/js/calendar/calendar-win2k-1.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/font-awesome.css" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/css/font-awesome.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/fancybox.css" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/css/fancybox.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/scroll.css" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/css/scrollingcart/scroll.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/blogmate.css" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/css/blogmate/blogmate.css" media="all" />
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/prototype.js" tppabs="http://demo.magikthemes.com/js/prototype/prototype.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/ccard.js" tppabs="http://demo.magikthemes.com/js/lib/ccard.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/validation.js" tppabs="http://demo.magikthemes.com/js/prototype/validation.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/builder.js" tppabs="http://demo.magikthemes.com/js/scriptaculous/builder.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/effects.js" tppabs="http://demo.magikthemes.com/js/scriptaculous/effects.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/dragdrop.js" tppabs="http://demo.magikthemes.com/js/scriptaculous/dragdrop.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/controls.js" tppabs="http://demo.magikthemes.com/js/scriptaculous/controls.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/slider.js" tppabs="http://demo.magikthemes.com/js/scriptaculous/slider.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/js.js" tppabs="http://demo.magikthemes.com/js/varien/js.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/form.js" tppabs="http://demo.magikthemes.com/js/varien/form.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/translate.js" tppabs="http://demo.magikthemes.com/js/mage/translate.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/cookies.js" tppabs="http://demo.magikthemes.com/js/mage/cookies.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/product.js" tppabs="http://demo.magikthemes.com/js/varien/product.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/configurable.js" tppabs="http://demo.magikthemes.com/js/varien/configurable.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/calendar.js" tppabs="http://demo.magikthemes.com/js/calendar/calendar.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/calendar-setup.js" tppabs="http://demo.magikthemes.com/js/calendar/calendar-setup.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/jquery-1.10.2.min.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/modernizr.custom.min.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/modernizr.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/selectivizr.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/selectivizr.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/matchMedia.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/matchMedia.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/matchMedia.addListener.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/matchMedia.addListener.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/enquire.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/enquire.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/app.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/app.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/jquery.cycle2.min.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/jquery.cycle2.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/jquery.cycle2.swipe.min.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/jquery.cycle2.swipe.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/slideshow.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/slideshow.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/imagesloaded.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/lib/imagesloaded.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/minicart.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/default/js/minicart.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/bundle.js" tppabs="http://demo.magikthemes.com/skin/frontend/base/default/js/bundle.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/jquery.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/jquery.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/banner.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/banner.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/nav.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/nav.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/cart.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/cart.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/totop.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/totop.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/products-slider.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/products-slider.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/left-nav.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/left-nav.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/cat-slides.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/cat-slides.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/mob-nav.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/mob-nav.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/pro-img-slider.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/pro-img-slider.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/toggle.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/toggle.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/cloud-zoom.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/cloud-zoom.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/jquery.fancybox-1.3.4.pack.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/jquery.lettering.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/jquery.lettering.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/common.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/jquery.lettering.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/easing.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/easing.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $themeName;?>/javascript/eislideshow.js" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/js/eislideshow.js"></script>
<link rel="stylesheet" href="css-family=Raleway-300,400,500,700,600.css" tppabs="http://fonts.googleapis.com/css?family=Raleway:300,400,500,700,600" />


<script type="text/javascript">
//<![CDATA[
Mage.Cookies.path     = '/';
Mage.Cookies.domain   = '.demo.magikthemes.com';
//]]>
</script>
<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<script type="text/javascript">
//<![CDATA[
optionalZipCountries = ["HK","IE","MO","PA"];
//]]>
</script>
 <script type="text/javascript">
jQuery(document).ready(function() {

	jQuery("#right_toolbar").show(); 
	jQuery("#back-top").hide();

	jQuery(function() {
	      jQuery(window).scroll(function() {
		  if (jQuery(this).scrollTop() > 150) {
			jQuery('#back-top').fadeIn();
		  } else { 
			jQuery('#back-top').fadeOut();
		  }
	      });

	      jQuery('#back-top a').click(function() {
		  jQuery('body,html').animate({scrollTop: 0}, 400);
		  return false;
	      });



	});

    jQuery("#right_toolbar .shoppingcart").bind('mouseenter',function() {
        jQuery(".shopping_cart_mini",this).stop(true, true).fadeIn(200, "linear");
    });

    jQuery("#right_toolbar .shoppingcart").bind('mouseleave',function() {
        jQuery(".shopping_cart_mini",this).stop(true, true).fadeOut(200, "linear");
    });

    jQuery("#right_toolbar .form-search ").mouseenter(function() {
        jQuery('#right_toolbar .form-search input').animate({
            right: 48,
            width: 240
        }, 300);
    });

 jQuery("#left_toolbar .form-search ").mouseenter(function() {
        jQuery('#left_toolbar .form-search input').animate({
            left: 40,
            width: 240
        }, 300);
    });

 jQuery("#right_toolbar .form-search ").mouseleave(function() {
        jQuery('#right_toolbar .form-search input').stop(true, false).animate({
            right: 20,
            width: 0
        }, 300);
    });

    jQuery("#left_toolbar .form-search ").mouseleave(function() {
        jQuery('#left_toolbar .form-search input').stop(true, false).animate({
            left: 20,
            width: 0
        }, 300);
    });

});
</script> 




     
  
<script type="text/javascript">//<![CDATA[
        var Translator = new Translate([]);
        //]]></script>
<link rel="stylesheet" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/styles.css" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/css/styles.css" type="text/css" />
<link rel="stylesheet" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/responsive.css" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/css/responsive.css" type="text/css" />




<body class="  cms-index-index cms-astra-home">

<div  id="right_toolbar">
		<div class="shoppingcart">
			<?php echo $carttop; ?>
		</div>
    <div class="search_wrapper">
		  <div class="form-search" >
			<button class="button-search" type="submit"><img src="catalog/view/theme/<?php echo $themeName;?>/image/scrollsearch_icon.png" tppabs="catalog/view/theme/<?php echo $themeName;?>/image/scrollsearch_icon.png" align="absmiddle"></button>
			<input name="search"  id="search" class="input-medium search-query" value="search" onBlur="if (this.value == '') {this.value = 'search';}" onFocus="if(this.value =='search') {this.value = '';}" type="text">
		  </div>  
	 </div>
	  
    <div id="back-top" style="display:none;"><a href="#top"><img src="catalog/view/theme/<?php echo $themeName;?>/image/magikbackto_top.png" tppabs="catalog/view/theme/<?php echo $themeName;?>/image/magikbackto_top.png"></a></div>
</div>
<!--- end  -->


  
  
  

<noscript>
	<div class="global-site-notice noscript">
		<div class="notice-inner">
			<p>
				<strong>JavaScript seems to be disabled in your browser.</strong><br />
				You must have JavaScript enabled in your browser to utilize the functionality of this website.                </p>
		</div>
		
	</div>
</noscript>
      
<header>
	<div class="top-links">	
	<div class="inner">
	

			 
			<?php echo $language; ?>
			<?php echo $currency; ?>	
			
			
		
			<p class="welcome-msg"></p>
		   <div class="toplinks">
			 <div class="links">
			  <div class="myaccount"><a href="<?php echo $account; ?>"><span><?php echo $text_account; ?></span></a></div>
			  <div class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total"><span><?php echo $text_wishlist; ?></span></a></div>
			  <div class="check"><a href="<?php echo $checkout; ?>"><span><?php echo $text_checkout; ?></span></a></div>
			  
			  <div class="demo"> <a href="<?php echo $shopping_cart; ?>"><span><?php echo $text_shopping_cart; ?></span></a></div>
					<div class="company">
					
					
						<div class="click-nav">
							<ul class="no-js">
								<li><a class="clicker" title="Company">Company <span class="caret"></span></a>
								<ul class="link">
									  <?php foreach ($informations as $information) { ?>
										<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
									  <?php } ?>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				 <div class="login"> <?php if (!$logged) { ?>
						<a href="<?php echo $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'); ?>"><span>Log In</span></a>
					<?php } else { ?>
					<?php echo $text_logged; ?>
					<?php } ?>
	
				</div>
				</div> <!-- links -->
		   </div> <!--toplinks-->
		</div><!--inner-->
		
	</div> <!--top-links-->
	 
 <div class="header">   
     <div id="os-phrases" class="os-phrases">
		<h2>Welcome to Astra</h2>
		<h2>15% Off on all Collection</h2>
		<h2>Free Shipping</h2>
		<h2>on order</h2>
		<h2>over $99</h2>
		<h2>Multipurpose design</h2>
		<h2>Clean and simple design</h2>
		<h2>Easy to Customizable</h2>
		<h2>Responsive magento theme</h2>
	</div>  
    <div class="top-cart-contain">
		<?php echo $cart; ?>
  <!--mini-cart-->
	</div> <!--top-cart-contain-->      
	<div class="logo"><a href="<?php echo $home; ?>" tppabs="<?php echo $home; ?>" title="<?php echo $name; ?>"><div><img src="<?php echo $logo; ?>" tppabs="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></div></a></div>
   </div> <!--header-->
 </header>
 
 
 
 
 <nav>
  <div class="nav-inner">
	<script type="text/javascript">
	    jQuery(document).ready(function () {
	        jQuery('.toggle').click(function () {
	            if (jQuery('.submenu').is(":hidden")) {
	                jQuery('.submenu').slideDown("fast");
	            } else {
	                jQuery('.submenu').slideUp("fast");
	            }
	            return false;
	        });
	    });

	    /*Phone Menu*/
	    jQuery(document).ready(function () {
	        jQuery(".topnav").accordion({
	            accordion: false,
	            speed: 300,
	            closedSign: '+',
	            openedSign: '-'
	        });
	    });

	</script>


		<?php 
				/**
				 * Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
				 */
				$modules = $helper->getModulesByPosition( 'mainmenu' ); 
				if( count($modules) ){ 
				?>

						<?php foreach ($modules as $module) { ?>
							<?php echo $module; ?>
						<?php } ?>

				<?php } elseif ($categories) { ?>
				<nav id="mainmenu" class="span9"><div class="navbar">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					  <span class="icon-bar"></span>
					  <span class="icon-bar"></span>
					  <span class="icon-bar"></span>
					</a>
					<div class="navbar-inner">

					<div class="nav-collapse collapse">
							
						  <ul class="nav">
							<?php foreach ($categories as $category) { ?>
							
							<?php if ($category['children']) { ?>			
							<li class="parent dropdown deeper "><a href="<?php echo $category['href'];?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?>
							<b class="caret"></b>
							</a>
							<?php } else { ?>
							<li ><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
							<?php } ?>
							<?php if ($category['children']) { ?>
							  <ul class="dropdown-menu">
								<?php for ($i = 0; $i < count($category['children']);) { ?>
								
								  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
								  <?php for (; $i < $j; $i++) { ?>
								  <?php if (isset($category['children'][$i])) { ?>
								  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
								  <?php } ?>
								  <?php } ?>
								
								<?php } ?>
						</ul>
							  <?php } ?>
							</li>
							<?php } ?>
						  </ul>
					</div>	</div>		  
				</div>
				</nav>
				<?php } ?>
	
	
	
	
	
	
	

    

 <div class="search-box">
      <input id="search" type="text" name="search"  value="" class="searchbox" maxlength="128" />
        <button  type="submit" title="Search" class="button-common search-btn-bg" id="submit-button"><span class="searchIconNew"></span></button>
        <div id="search_autocomplete" class="search-autocomplete"></div>
       
 </div> <!--search-box-->  </div> <!--nav-inner-->
</nav>
<!--nav-->

 
 
 


  

