<div id="menu" class="hidden-desktop">
    <ul class="navmenu">
        <li>
            <div class="menutop">
                <div class="toggle">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                    </span>
                </div>
            </div>
            <ul class="submenu" style="display: none;">
			
                <li>
                    <ul class="topnav">
					<?php foreach($menus as $menu){  ?>
                        <li class="level0 nav-1 level-top first parent"><a href="<?php echo $menu['href'] ?>" tppabs="<?php echo $menu['href'] ?>"
                            class="level-top"><span><?php echo $menu['title'] ?></span> </a>
                            <?php if($menu['submenu']){ ?>
							<ul class="level0">
								<?php foreach($menu['submenu'] as $submenu){  ?>
                                <li class="level1 nav-1-1 first parent"><a href="<?php echo $submenu['href']; ?>" tppabs="<?php echo $submenu['href']; ?>">
                                    <span><?php echo $submenu['title']; ?></span> </a>
									<?php if($submenu['submenu_sub']) { ?>
									   <ul class="level1">
											<?php foreach($submenu['submenu_sub'] as $submenusub){  ?>
											<li class="level2 nav-1-1-1 first"><a href="<?php echo $submenusub['href']; ?>" tppabs="<?php echo $submenusub['href']; ?>">
												<span><?php echo $submenusub['title']; ?></span> </a></li>
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
                </li>
            </ul>
        </li>
    </ul>
    <!--navmenu-->
</div>


<?php // echo "<pre>"; print_r($menus); die; ?>


<!-- BEGIN NAV -->
<ul id="nav">
	
	<?php foreach($menus as $menu){  ?>
		<?php /* if($menu['type_submenu']==0) { ?>
			<li ><a  class="level-top"  href="<?php echo $menu['href']; ?>"><span><?php echo $menu['title']; ?></span></a></li>
		<?php } */ ?>
		
		<?php if($menu['type_submenu']==0) {   ?>
			 <li id="nav-home" class="level0 parent drop-menu"><a class="level-top" href="<?php echo $menu['href'] ?>"
					tppabs="<?php echo $menu['href'] ?>"><span><?php echo $menu['title']; ?></span></a>
					<?php if($menu['submenu']){ ?>
						<ul class="level1" style="display: none;">
							<?php foreach($menu['submenu'] as $submenu){  ?>
							<li class="level1 first parent"><a href="<?php echo $submenu['href'];  ?>" tppabs="<?php echo $submenu['href'];  ?>">
								<span><?php echo $submenu['title'];  ?></span></a></li>
							<?php  } ?>
						</ul>
					<?php } ?>
			</li>
		<?php } ?>	
		
	
		
	<?php if($menu['type_submenu']==1){   ?>
		<li class="level0 nav-5 level-top"><a class="level-top" href="<?php echo $menu['href'];  ?>" tppabs="<?php echo $menu['href'];  ?>">
			<span><?php echo $menu['title'];  ?></span></a>
			<?php if($menu['submenu']){  ?>
				<div class="level0-wrapper dropdown-6col" style="left: 0px; display: none;">
					<div class="level0-wrapper2">
						<div class="nav-block nav-block-center">	
							<ul class="level0">
							<?php foreach($menu['submenu'] as $submenu){  ?>
								<li class="level1 nav-6-1 parent item"><a href="<?php echo $submenu['href'];  ?>" tppabs="<?php echo $submenu['href'];  ?>">
									<span><?php echo $submenu['title'];  ?></span></a>
									<!--sub sub category-->
									<ul class="level1">
										<?php foreach($submenu['submenu_sub'] as $submenusub){  ?>
										<li class="level2 nav-6-1-1"><a href="<?php echo $submenusub['href'];  ?>" tppabs="<?php echo $submenusub['href'];  ?>">
											<span><?php echo $submenusub['title'];  ?></span></a> </li>
										<?php } ?>
										
									</ul>
									<!--level1-->
									<!--sub sub category-->
								</li>
							<?php } ?>
								<!--level1 nav-6-1 parent item-->
							</ul>
							<!--level0-->
						</div>
						<!--nav-block nav-block-center-->
					</div>
					<!--level0-wrapper2-->
					
					
					<?php if($menu['arr_image']){  ?>
						<div class="nav-add">
							<?php foreach($menu['arr_image'] as $image){  ?>
								<div class="push_item">
									<div class="push_img">
										<a href="<?php echo $image['href']; ?>">
											<img src="<?php echo $image['image']; ?>"
												tppabs="<?php echo $image['image']; ?>"
												alt="women jwellery" />
										</a>
									</div>
									<div class="push_text"><?php echo $image['description']; ?></div>
								</div>
							<?php } ?>
						</div>
					<?php } ?>
				</div>
			<?php } ?>
			<!--level0-wrapper dropdown-6col-->
		</li>
	<?php } ?>


<?php  if($menu['type_submenu']== 2){    ?>
    <li class="level0 nav-5 level-top"><a class="level-top" href="<?php echo $menu['href'];  ?>" tppabs="<?php echo $menu['href'];  ?>">
        <span><?php echo $menu['title'];  ?></span></a>
		<?php if($menu['submenu']){ ?>
        <div class="level0-wrapper dropdown-6col" style="left: 0px; display: none;">
            <div class="level0-wrapper2">
                <div class="nav-block nav-block-center">
                    <ul class="level0">
					
					<?php foreach($menu['submenu'] as $submenu){  ?>
                        <li class="level1 nav-6-1 parent item">
                            <div class="cat-img">
                                <img src="<?php echo $submenu['image']; ?>" tppabs="<?php echo $submenu['image']; ?>"
                                    alt="<?php echo $submenu['title']; ?>" /></div>
                            <a href="<?php echo $submenu['href']; ?>" tppabs="<?php echo $submenu['href']; ?>">
                                <span><?php echo $submenu['title']; ?></span></a>
								
                            <!--sub sub category-->
                            <ul class="level1">
								<?php foreach($submenu['submenu_sub'] as $submenusub){  ?>
                                <li class="level2 nav-6-1-1"><a href="<?php echo $submenusub['href']; ?>" tppabs="<?php echo $submenusub['href']; ?>">
                                    <span><?php echo $submenusub['title']; ?></span></a> </li>
								<?php } ?>
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                       <?php } ?>
                    </ul>
                    <!--level0-->
                </div>
                <!--nav-block nav-block-center-->
            </div>
            <!--level0-wrapper2-->
        </div>
		<?php } ?>
        <!--level0-wrapper dropdown-6col-->
    </li>
	<?php } ?>


<?php if($menu['type_submenu']==3){  ?>	    
    <li class="level0 nav-5 level-top"><a class="level-top" href="<?php echo $menu['href'];  ?>" tppabs="<?php echo $menu['href'];  ?>">
        <span><?php echo $menu['title'];  ?></span></a>
		
		<?php if($menu['submenu']){  ?>		
        <div class="level0-wrapper dropdown-6col" style="left: 0px; display: none;">
            <div class="level0-wrapper2">
                <div class="nav-block nav-block-center grid13-8 itemgrid itemgrid-4col">
                    <ul class="level0">
					<?php foreach($menu['submenu'] as $submenu){  ?>
                        <li class="level1 nav-6-1 parent item"><a href="<?php echo $submenu['href'];  ?>" tppabs="<?php echo $submenu['href'];  ?>">
                            <span><?php echo $submenu['title'];  ?></span></a>
                            <!--sub sub category-->
                            <ul class="level1">
								<?php foreach($submenu['submenu_sub'] as $submenusub){  ?>
                                <li class="level2 nav-6-1-1"><a href="<?php echo $submenusub['href'];  ?>" tppabs="<?php echo $submenusub['href'];  ?>">
                                    <span><?php echo $submenusub['title'];  ?></span></a> </li>
                               <?php } ?>
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
					<?php } ?>	
						
                    </ul>
                    <!--level0-->
                </div>
                <!--nav-block nav-block-center-->
                <div class="nav-block nav-block-right std grid12-3">
                    <p>
                        <a href="<?php echo $menu['product']['href'];  ?>" tppabs="<?php echo $menu['product']['href']; ?>"
                            title="Women Casual Wear" class="product-image">
                            <img src="<?php echo $menu['product']['image'];  ?>" tppabs="<?php echo $menu['product']['href'];  ?>"
                                width="150" height="150" alt="<?php echo $menu['product']['name'];  ?>" /></a>
                        <div class="item-title">
                            <a href="<?php echo $menu['product']['href'];  ?>" tppabs="<?php echo $menu['product']['href'];  ?>"
                                title="Women Casual Wear"><?php echo $menu['product']['name'];  ?> </a>
                        </div>
                        <!--item-title-->
                        <div class="price-box">
                            <span class="regular-price" id="product-price-63-new"><span class="price"><?php echo $menu['product']['price'];  ?></span>
                            </span>
                        </div>
                        <!-- Endif collection -->
                    </p>
                </div>
                <!--nav-block nav-block-right std grid12-3-->
            </div>
            <!--level0-wrapper2-->
        </div>
		<?php } ?>
        <!--level0-wrapper dropdown-6col-->
    </li>
<?php } ?>

<?php if($menu['type_submenu']==4){   ?>
	<li class="level0 nav-5 level-top"><a class="level-top" href="<?php echo $menu['href'];  ?>" tppabs="<?php echo $menu['href'];  ?>">
        <span><?php echo $menu['title'];  ?></span></a>
		<?php if($menu['submenu']){  ?>	
        <div class="level0-wrapper dropdown-6col" style="left: 0px; display: none;">
            <div class="level0-wrapper2">
                <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">
                    <ul class="level0">
					<?php foreach($menu['submenu'] as $submenu){  ?>
                        <li class="level1 nav-6-1 parent item"><a href="<?php echo $submenu['href'];  ?>" tppabs="<?php echo $submenu['href'];  ?>">
                            <span><?php echo $submenu['title'];  ?></span></a>
                            <!--sub sub category-->
                            <ul class="level1">
								<?php foreach($submenu['submenu_sub'] as $submenusub){  ?>
									<li class="level2 nav-6-1-1"><a href="<?php echo $submenusub['href'];  ?>" tppabs="<?php echo $submenusub['href'];  ?>">
										<span><?php echo $submenusub['title'];  ?></span></a> </li>
								<?php } ?>
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                      <?php } ?>
                    </ul>
                    <!--level0-->
                </div>
                <!--nav-block nav-block-center-->
                <div class="nav-block nav-block-right std grid12-4">
                    <a href="<?php  echo $menu['href']; ?>" tppabs="<?php  echo $menu['href']; ?>">
                        <img src="<?php  echo $menu['image']; ?>" tppabs="<?php  echo $menu['image']; ?>"
                            align="absmiddle" /></a>
                </div>
                <!--nav-block nav-block-right std grid12-4-->
            </div>
            <!--level0-wrapper2-->
        </div>
        <!--level0-wrapper dropdown-6col-->
		<?php } ?>
    </li>
<?php } ?>	
	


<?php if($menu['type_submenu']==5){  ?>	 
    <li class="nav-custom-link level0 level-top parent"><a href="<?php echo $menu['href']; ?>" class="level-top"><span>
        <?php echo $menu['title']; ?></span> </a>
		<?php if($menu['submenu']){  ?>
			<div class="level0-wrapper custom-menu" style="left: 0px; display: none;">
				<div class="header-nav-dropdown-wrapper clearer">
					<?php foreach($menu['submenu'] as $submenu){  ?>
					<div class="grid12-5">
						<div class="custom_img">
							<a href="<?php echo $submenu['href']; ?>"><img src="<?php echo $submenu['image']; ?>" tppabs="<?php echo $submenu['image']; ?>"
								alt="<?php echo $submenu['title']; ?>" /></a></div>
						<p>
							<?php echo $submenu['description']; ?></p>
					</div>
					<?php } ?>
				</div>
			</div>
		<?php } ?>
    </li>
	<?php } ?>	
<?php } ?>		
</ul>
<!--nav-->
<script type="text/javascript">
        //<![CDATA[

    jQuery(function ($) {
        $("#nav > li").hover(function () {
            var el = $(this).find(".level0-wrapper");
            el.hide();
            el.css("left", "0");
            el.stop(true, true).delay(150).fadeIn(300, "easeOutCubic");
        }, function () {
            $(this).find(".level0-wrapper").stop(true, true).delay(300).fadeOut(300, "easeInCubic");
        });
    });

    var isTouchDevice = ('ontouchstart' in window) || (navigator.msMaxTouchPoints > 0);
    jQuery(window).on("load", function () {

        if (isTouchDevice) {
            jQuery('#nav a.level-top').click(function (e) {
                $t = jQuery(this);
                $parent = $t.parent();
                if ($parent.hasClass('parent')) {
                    if (!$t.hasClass('menu-ready')) {
                        jQuery('#nav a.level-top').removeClass('menu-ready');
                        $t.addClass('menu-ready');
                        return false;
                    }
                    else {
                        $t.removeClass('menu-ready');
                    }
                }
            });
        }

    }); //end: on load

        //]]>
</script>
<script type="text/javascript">
//<![CDATA[
    jQuery(document).ready(function () {
        var scrolled = false;
        jQuery("#nav li.level0.drop-menu").mouseover(function () {
            if (jQuery(window).width() >= 740) {
                jQuery(this).children('ul.level1').fadeIn(100);
            }
            return false;
        }).mouseleave(function () {
            if (jQuery(window).width() >= 740) {
                jQuery(this).children('ul.level1').fadeOut(100);
            }
            return false;
        });
        jQuery("#nav li.level0.drop-menu li").mouseover(function () {
            if (jQuery(window).width() >= 740) {
                jQuery(this).children('ul').css({ top: 0, left: "165px" });
                var offset = jQuery(this).offset();
                if (offset && (jQuery(window).width() < offset.left + 325)) {
                    jQuery(this).children('ul').removeClass("right-sub");
                    jQuery(this).children('ul').addClass("left-sub");
                    jQuery(this).children('ul').css({ top: 0, left: "-167px" });
                } else {
                    jQuery(this).children('ul').removeClass("left-sub");
                    jQuery(this).children('ul').addClass("right-sub");
                }
                jQuery(this).children('ul').fadeIn(100);
            }
        }).mouseleave(function () {
            if (jQuery(window).width() >= 740) {
                jQuery(this).children('ul').fadeOut(100);
            }
        });


    });
//]]>
</script>