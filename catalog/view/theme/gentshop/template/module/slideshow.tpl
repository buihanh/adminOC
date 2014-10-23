			<div class="hidden-xs hidden-sm bannercontainer banner-fullwidth">
				<div id="slideshow<?php echo $module; ?>" class="rev_slider fullwidthbanner" style="width:100%;">
				<ul>
					
					<?php $i=0; foreach ($banners as $banner) { ?>
					<li   data-masterspeed="300"  data-transition="random" data-slotamount="7" data-thumb="<?php echo $banner['image']; ?>">
							<img src="<?php echo $banner['image']; ?>" alt=""/>
							<?php if($i%2==0){?>
							<!-- THE MAIN IMAGE IN THE SLIDE -->
							<div class="caption big_black lfl easeInOutQuint easeInOutQuint" data-x="50" data-y="137"
								data-speed="300" data-start="876" data-easing="easeOutExpo" >
								<?php echo $banner['title']; ?> 											 	
							</div>
							<!-- THE MAIN IMAGE IN THE SLIDE -->
							<!--<div class="caption big_black lfl easeInOutCubic   easeInOutCubic" data-x="50" data-y="245"
								data-speed="300" data-start="1292" data-easing="easeOutExpo"  >
								Office Attire											 	
							</div>-->
							<!-- THE MAIN IMAGE IN THE SLIDE -->
							<!--<div class="caption medium_black lfr easeOutExpo   easeOutExpo" data-x="50" data-y="370"
								data-speed="300" data-start="1998" data-easing="easeOutExpo"  >
								Dressing For The Occasion											 	
							</div>-->
							<!-- THE MAIN IMAGE IN THE SLIDE speed2659 y425-->
							<div class="caption btn btn-outline-black randomrotate easeOutExpo   easeOutExpo" data-x="50"
								data-y="425" data-speed="300" data-start="1292" data-easing="easeOutExpo"  >
								<a href="<?php echo $banner['link'];?>">view collection</a>											 	
							</div>
							<?php }else{?>
							<div class="caption big_black lfl easeInOutQuint easeInOutQuint" data-x="675" data-y="137"
								data-speed="300" data-start="876" data-easing="easeOutExpo" >
								<?php echo $banner['title']; ?> 											 	
							</div>
							<!-- THE MAIN IMAGE IN THE SLIDE -->
							<!--<div class="caption big_black lfl easeInOutCubic   easeInOutCubic" data-x="675" data-y="245"
								data-speed="300" data-start="1292" data-easing="easeOutExpo"  >
								Office Attire											 	
							</div>-->
							<!-- THE MAIN IMAGE IN THE SLIDE -->
							<!--<div class="caption medium_black lfr easeOutExpo   easeOutExpo" data-x="675" data-y="370"
								data-speed="300" data-start="1998" data-easing="easeOutExpo"  >
								Dressing For The Occasion											 	
							</div>-->
							<!-- THE MAIN IMAGE IN THE SLIDE speed2659 y425-->
							<div class="caption btn btn-outline-black randomrotate easeOutExpo   easeOutExpo" data-x="675"
								data-y="425" data-speed="300" data-start="1292" data-easing="easeOutExpo"  >
								<a href="<?php echo $banner['link'];?>">view collection</a>											 	
							</div>
							<?php }?>
						</li>
						<?php $i++;}?>
				</ul>
				</div>
			  <!--<div id="slideshow<?php echo $module; ?>" class="rev_slider fullwidthbanner" style="width:100%;height: 640px">
			    <?php foreach ($banners as $banner) { ?>
			    <?php if ($banner['link']) { ?>
			    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
			    <?php } else { ?>
			    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
			    <?php } ?>
			    <?php } ?>
			  </div>-->
			</div>
<script type="text/javascript">
	var tpj=jQuery;
	
	
	
	
	if (tpj.fn.cssOriginal!=undefined)
	tpj.fn.css = tpj.fn.cssOriginal;
	tpj('#slideshow<?php echo $module; ?>').revolution(
	{
		delay:6000,
		startheight:640,
		startwidth:1250,
		
		
		hideThumbs:0,
		
		thumbWidth:100,						
		thumbHeight:50,
		thumbAmount:5,
		
		navigationType:"none",				
		navigationArrows:"verticalcentered",				
		navigationStyle:"round",			 
		
		navOffsetHorizontal:0,
		navOffsetVertical:20, 	
		
		touchenabled:"on",			
		onHoverStop:"on",						
		shuffle:"off",	
		stopAtSlide:-1,						
		stopAfterLoops:-1,						
		
		hideCaptionAtLimit:0,				
		hideAllCaptionAtLilmit:0,				
		hideSliderAtLimit:0,			
		fullWidth:"on",
		shadow:0	 
		
		
		
	});
</script>