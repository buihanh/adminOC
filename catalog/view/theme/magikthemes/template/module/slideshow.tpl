<?php /*

<div class="slideshow">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider();
});
--></script>

*/ ?>

  <!-- Home Slider Block -->
<?php  if($banners) { ?>
<div id="slider-elastic" class="slider slider-elastic elastic ei-slider">
    <div class="ei-slider-loading">
        Loading</div>
    <ul class="ei-slider-large">
	<?php foreach ($banners as $banner) { ?>
	
        <li class="first slide-1 slide align-">
            <img class="attachment-full" src="<?php echo $banner['image']; ?>"
                tppabs="<?php echo $banner['image']; ?>"
                alt="slide-bg" />
            <div class="ei-title">
                <h2>
                    <?php echo $banner['description1'];  ?></h2>
                <h3>
                   <?php echo $banner['description2'];  ?></h3>
                <p>
                    <?php echo $banner['description3'];  ?></p>
                <a class="shop-btn" href="<?php echo $banner['link'];  ?>"><?php echo $banner['title'];  ?></a></div>
        </li>
	<?php }  ?>
    </ul>
    <ul class="ei-slider-thumbs">
        <li class="ei-slider-element">Current</li>
		<?php foreach ($banners as $banner) { ?>
        <li><a href="#">Hello there! </a>
            <img src="<?php echo $banner['image']; ?>"
                tppabs="<?php echo $banner['image']; ?>"
                alt="slide-bg" /></li>
				
		<?php }  ?>
    </ul>
    <div class="shadow">
        &nbsp;</div>
</div>
<?php  } ?>  
          <!-- Header block call -->
        
	

