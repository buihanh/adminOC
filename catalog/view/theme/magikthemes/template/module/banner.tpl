
<div class="offer-banner-section">
	<?php 
	$i =0;
	foreach ($banners as $banner) {
		$i++;
		$temp = 'col';
		if($i==count($banners))
		$temp = 'col last'; 
	?>
	  <?php if ($banner['link']) { 
	  
	  ?>
	  <div class="<?php echo $temp; ?>">
       <a href="<?php echo $banner['link']; ?>"> <img src="<?php echo $banner['image']; ?>" tppabs="<?php echo $banner['image']; ?>"
            alt="<?php echo $banner['title']; ?>" /></a></div>
	  <?php } else { ?>
	  <div class="<?php echo $temp; ?>"><img src="<?php echo $banner['image']; ?>" tppabs="<?php echo $banner['image']; ?>"
            alt="<?php echo $banner['title']; ?>" /></div>
	  <?php } ?>
	  <?php } ?>
</div>
