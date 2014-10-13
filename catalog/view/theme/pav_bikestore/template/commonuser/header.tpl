<?php 
	$themeConfig = (array)$this->config->get( 'themecontrol' );
	$themeName =  $this->config->get('config_template');
	require_once( DIR_TEMPLATE.$this->config->get('config_template')."/template/libs/module.php" );
	$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );

	/* Add scripts files */
	$helper->addScript( 'catalog/view/javascript/jquery/jquery-1.7.1.min.js' );

	$helper->addScript( 'catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js' );
	$helper->addScript( 'catalog/view/javascript/jquery/ui/external/jquery.cookie.js' );
?>
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
<meta name="viewport" content="width=device-width">
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



<?php foreach( $helper->getScriptFiles() as $script )  { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

<!-- BOOTSTRAP STYLES-->
    <link href="catalog/view/theme/<?php echo $themeName;?>/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="catalog/view/theme/<?php echo $themeName;?>/assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
  
        <!-- CUSTOM STYLES-->
    <link href="catalog/view/theme/<?php echo $themeName;?>/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	
	
	<link href="catalog/view/theme/<?php echo $themeName;?>/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>



<?php if ( isset($stores) && $stores ) { ?>
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
   <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				 <?php if ($logo) { ?>
				  <a  class="navbar-brand" href="<?php echo $home; ?>"><img class="user-image img-responsive" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
				  <?php } ?>
             
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> 
	 Hello ( <?php  echo $username; ?>) &nbsp; <a href="<?php echo $this->data['logout'] = $this->url->link('account/logout', '', 'SSL');  ?>" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
		   
		   
		   
		   
		   
		   
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				
                    <li>
                        <a class="active-menu"  href="index.html"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                    </li>
                     <li>
                        <a  href="<?php  echo $this->url->link('account/account', '', 'SSL');  ?>"><i class="fa fa-user fa-3x"></i> My account </a>
                    </li>
                    <li>
                        <a  href="<?php echo  $this->url->link('account/product', '', 'SSL');  ?>"><i class="fa fa-adjust fa-3x"></i>My product <span class="fa arrow"></span></a>
						
						<ul class="nav nav-second-level">
                            <li>
                                <a href="<?php  echo $this->url->link('account/product', '', 'SSL');  ?>">List product</a>
                            </li>
							<li>
                                <a href="<?php  echo $this->url->link('account/product/add', '', 'SSL');  ?>">Add product</a>
                            </li>
						</ul>
                    </li>
					<li>
                        <a   href="<?php echo $this->url->link('account/password', '', 'SSL');  ?>"><i class="fa fa-refresh fa-3x"></i> Password</a>
                    </li>	
                      <li  >
                        <a  href="<?php  echo $this->url->link('account/address', '', 'SSL');  ?>"><i class="fa fa-table fa-3x"></i> Address</a>
                    </li>
                    <li  >
                        <a  href="<?php echo $this->url->link('account/order', '', 'SSL');  ?>"><i class="fa fa-edit fa-3x"></i> Order </a>
                    </li>				
					
					   
				<!--					   
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>
                               
                            </li>
                        </ul>
                      </li>  
					  -->
					<li>
                        <a  href="<?php echo $this->url->link('account/download/info', '', 'SSL');  ?>"><i class="fa fa-download fa-3x"></i>Download product</a>
                    </li>	
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
		
        <div id="page-wrapper" >
		
		
		
          
			 
			 
