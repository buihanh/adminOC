<!DOCTYPE html>
<html lang="en" dir="ltr">
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
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/demo.css" />
		<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/demo.js"></script>

	</head>
	<body>
             



		<div   class="download-view">
			<div class="top-header" id="top-header">

                <div class="name-themes">Themes gi gi do</div>
                <div class="div-search"><input  type="text" id="search" class="search search-autocomplete"  />
					<div class="search-content"></div>
				</div>

                   <div class="download"><a href="">Download</a></div>
                <div class="enabled target" id="ma-devices">
                    <ul>
                        <li class="item-auto" ><a title="Auto" href="javascript:void(0)" class="auto"><div></div></a></li>
                        <li class="item-tablet-landscape"><a title="Tablet Landscape" href="javascript:void(0)" class="tablet-landscape"><div></div></a></li>
                        <li class="item-tablet-portrait"><a title="Tablet Portrait" href="javascript:void(0)" class="tablet-portrait"><div></div></a></li>
                        <li class="item-smartphone-landscape"><a title="Smartphone Landscape" href="javascript:void(0)" class="smartphone-landscape"><div></div></a></li>
                        <li class="item-smartphone-portrait"><a title="Smartphone Portrait" href="javascript:void(0)" class="smartphone-portrait"><div></div></a></li>
                    </ul>
                 </div><!-- END MENU REPONSIVE-->

            </div>
		</div>
		<div class="show-hide">
             <a href="javascript:void(0)"  id="hide-btn" >Hide</a>
            <a  style="display: none" href="javascript:void(0)"  id="show-btn" >show</a>
		</div>
		
		
		<div class="bg-page">
			<div id="page">
				<iframe id="preview-frame" frameborder="0" noresize="noresize" name="preview-frame" src="<?php echo $href_view_demo; ?>" >

				</iframe>
			</div>
		</div>
	</body>
</html>


