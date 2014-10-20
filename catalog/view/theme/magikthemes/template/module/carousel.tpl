

<div class="brand-logo">
    <div class="jcarousel-skin-tango">
        <div style="position: relative; display: block;" class="jcarousel-container jcarousel-container-horizontal"
            id="mycarousel3">
            <div style="overflow: hidden; position: relative;" class="jcarousel-clip jcarousel-clip-horizontal">
                <ul style="overflow: hidden; position: relative; top: 0px; margin: 0px; padding: 0px;
                    left: -2012.41px; width: 3832px;" class="jcarousel-list jcarousel-list-horizontal">
                   

					 <?php foreach ($banners as $i=> $banner) {  ?>
							<li style="float: left; list-style: none outside none;" class="jcarousel-item jcarousel-item-horizontal jcarousel-item-1 jcarousel-item-1-horizontal"
								jcarouselindex="1">
								<a   alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" href="<?php echo $banner['link']; ?>"><img alt="brand-logo" tppabs="<?php echo $banner['image']; ?>"
									src="<?php echo $banner['image']; ?>"></a>
							</li>
							
					<?php  } ?>	
				</ul>
            </div>
            <div style="display: block;" class="jcarousel-prev jcarousel-prev-horizontal">
                &nbsp;</div>
            <div style="display: block;" class="jcarousel-next jcarousel-next-horizontal">
                &nbsp;</div>
        </div>
    </div>
</div>
