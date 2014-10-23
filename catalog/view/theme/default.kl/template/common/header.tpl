<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
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

<meta name="viewport" content="width=device-width">

<link href='http://fonts.googleapis.com/css?family=Droid+Serif' rel='stylesheet' type='text/css'>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="catalog/view/javascript/jquery.flexisel.js"></script>
  

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/bootstrap-theme.min.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>


<!-- Style menu  && js menu  -->

<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/slimmenu.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery.slimmenu.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>




<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>


<!-- slide  --->
<script type="text/javascript" src="catalog/view/javascript/jssor.core.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jssor.utils.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jssor.slider.js"></script>





<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>





<script type="text/javascript" src="catalog/view/javascript/stickytooltip.js"></script>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stickytooltip.css" />



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
<body>
<div class="header-top">
    <div class="container">
         <?php echo $language; ?>
            <?php echo $currency; ?>
            <div id="welcome">
            <?php if (!$logged) { ?>
                <?php echo $text_welcome; ?>
                <?php } else { ?>
                <?php echo $text_logged; ?>
                <?php } ?>
         </div>
    </div>
</div><!-- end top content ---->
<div class="template-header">

        <?php echo $cart; ?>

    <?php if ($logo) { ?>
    <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
    <?php } ?>

    <div id="search">
          <div class="button-search"></div>
          <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
      </div>

</div><!-- End template header -->
<div class="template-menu">

</div><!-- End template menu -->


<div id="notification"></div>


<div class="header">
	<div class="my-header container">
		<div class="my-logo col-xs-12 col-sm-4">
			 <?php if ($logo) { ?>
			<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
			<?php } ?>
		</div>	
		<div class="my-menu col-xs-12 col-sm-8">
		<?php if ($categories) { ?>
			<ul class="slimmenu">
				 <?php foreach ($categories as $category) { ?>
				<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
					<?php if ($category['children']) { ?>
						<ul>
						 <?php for ($i = 0; $i < count($category['children']); $i++) { ?>
							  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>							
						 <?php } ?>
						</ul>
					<?php } ?>
					</li>
				<?php } ?>
				<li>
					<a href="javascript:void(0)">Membership Area</a>
					<ul>
						<li><a href="#">Slim Menu 1.1</a></li>
						<li><a href="#">Slim Menu 1.2</a></li>
					</ul>
				</li>
				
				<li>
					<a href="javascript:void(0)">Support</a>
					<ul>
						<li><a href="#">Slim Menu 1.1</a></li>
						<li><a href="#">Slim Menu 1.2</a></li>
					</ul>
				</li>
				
				
				<li>
					<a href="javascript:void(0)">Single Area</a>
					<ul>
						<li><a href="#">Slim Menu 1.1</a></li>
						<li><a href="#">Slim Menu 1.2</a></li>
					</ul>
				</li>
				
				
				
			</ul>
		
		<?php } ?>
		
		
				<script>
					$('ul.slimmenu').slimmenu(
					{
						resizeWidth: '800',
						collapserTitle: 'Main Menu',
						easingEffect:'easeInOutQuint',
						animSpeed:'medium',
						indentChildren: true,
						childrenIndenter: '&raquo;'
					});
					</script>
								
		</div>	
	</div>
</div>
<!--- end header -->





