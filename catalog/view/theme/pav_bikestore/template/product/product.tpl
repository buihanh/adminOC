<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );

  $themeConfig = (array)$this->config->get('themecontrol');
  $productConfig = array(
      'product_enablezoom'         => 1,
      'product_zoommode'           => 'basic',
      'product_zoomeasing'         => 1,
      'product_zoomlensshape'      => "round",
      'product_zoomlenssize'       => "150",
      'product_zoomgallery'        => 0,
      'enable_product_customtab'   => 0,
      'product_customtab_name'     => '',
      'product_customtab_content'  => '',
        
  );
  $languageID = $this->config->get('config_language_id');
  $productConfig = array_merge( $productConfig, $themeConfig );
  $listConfig = array( 
    
    'category_pzoom' => 0
  ); 

  $listConfig = array_merge( $listConfig, $themeConfig ); 
  $categoryPzoom = $listConfig['category_pzoom'];  
?>
<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
<div>
<?php if( $SPAN[0] ): ?>
	<div class="span<?php echo $SPAN[0];?>">
		<?php echo $column_left; ?>
	</div>
<?php endif; ?> 
<div class="span<?php echo $SPAN[1];?>">
<div id="content"><?php echo $content_top; ?>
  
 
  <div class="product-info">
	<div class="row-fluid">
       <?php if ($images) { ?>
          <script>
            $( document ).ready(function() {
                    var _SlideshowTransitions = [
                            //Fade in R
                                {$Duration: 1200, x: -0.3, $During: { $Left: [0.3, 0.7] }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 }
                    //Fade out L
                    , { $Duration: 1200, x: 0.3, $SlideOut: true, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 }
            ];

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                },

                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10                                    //[Optional] Vertical space between each item in pixel, default value is 0
                },

                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 2,                                //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                },

                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $ActionMode: 0,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $DisableDrag: true                              //[Optional] Disable drag or not, default value is false
                }
            };

            var jssor_sliderb = new $JssorSlider$("sliderb_container", options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_sliderb.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_sliderb.$SetScaleWidth(Math.min(parentWidth, 1170));
                else
                    window.setTimeout(ScaleSlider, 30);
            }

            ScaleSlider();

            if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                $(window).bind('resize', ScaleSlider);
            }
            });

            </script>

            <!-- Jssor Slider Begin -->
            <!-- You can move inline styles to css file or css block. -->
            <div id="sliderb_container" style="position: relative; width: 1170px;
                height: 500px; overflow: hidden;">

                <!-- Loading Screen -->
                <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                        background-color: #000; top: 0px; left: 0px;width: 100%;height:100%;">
                    </div>
                    <div style="position: absolute; display: block; background: url(catalog/view/theme/default/image/loader.gif) no-repeat center center;
                        top: 0px; left: 0px;width: 100%;height:100%;">
                    </div>
                </div>

                <!-- Slides Container -->
                <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1170px; height: 500px;
                    overflow: hidden;">
                    <?php foreach ($images as $image) { ?>
                    <div>
                        <img u=image src="<?php echo $image['popup']; ?>" />
                    </div>
                    <?php } ?>
                </div>



                <!-- bullet navigator container -->
                <div u="navigator" class="jssorb01" style="position: absolute; border-radius:12px; bottom: 16px; right: 10px;">
                    <!-- bullet navigator item prototype -->
                    <div u="prototype" style="POSITION: absolute; WIDTH: 12px; border-radius:12px; HEIGHT: 12px;"></div>
                </div>
                <!-- Bullet Navigator Skin End -->


                <!-- Arrow Left -->
                <span u="arrowleft" class="jssora05l" style="width: 40px; height: 40px; border-radius:12px; top: 123px; left: 8px;">
                </span>
                <!-- Arrow Right -->
                <span u="arrowright" class="jssora05r" style="width: 40px; height: 40px; border-radius:12px; top: 123px; right: 8px">

                </span>
               </div>
          <?php } ?>

      <div class="box-ngang"></div>
    <div class="span6">	
		  <div id="horizontalTab">
            <ul class="resp-tabs-list">
					<li><?php echo $tab_description; ?></li>
				<?php if ($attribute_groups) { ?>
					<li><?php echo $tab_attribute; ?></li>
				<?php } ?>
				<?php if ($review_status) { ?>
					<li><?php echo $tab_review; ?></li>
				<?php } ?>
				<?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_name'][$languageID]) ) { ?>
				 <li><?php echo $productConfig['product_customtab_name'][$languageID]; ?></li>
			   <?php } ?> 
				
            </ul>
            <div class="resp-tabs-container">
                <div>
                   <?php echo $description; ?>
                </div>
				<?php if ($attribute_groups) { ?>
					<div>
					  <div id="tab-attribute" class="tab-content">
						<table class="attribute">
						  <?php foreach ($attribute_groups as $attribute_group) { ?>
						  <thead>
							<tr>
							  <td colspan="2"><?php echo $attribute_group['name']; ?></td>
							</tr>
						  </thead>
						  <tbody>
							<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
							<tr>
							  <td><?php echo $attribute['name']; ?></td>
							  <td><?php echo $attribute['text']; ?></td>
							</tr>
							<?php } ?>
						  </tbody>
						  <?php } ?>
						</table>
					  </div>
					</div>
				<?php } ?>
				<?php if ($review_status) { ?>
					<div>
						<div id="tab-review" class="tab-content">
							<div id="review"></div>
							<h2 id="review-title"><?php echo $text_write; ?></h2>
							<b><?php echo $entry_name; ?></b><br />
							<input type="text" name="name" value="" />
							<br />
							<br />
							<b><?php echo $entry_review; ?></b>
							<textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
							<span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
							<br />
							<b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
							<input type="radio" name="rating" value="1" />
							&nbsp;
							<input type="radio" name="rating" value="2" />
							&nbsp;
							<input type="radio" name="rating" value="3" />
							&nbsp;
							<input type="radio" name="rating" value="4" />
							&nbsp;
							<input type="radio" name="rating" value="5" />
							&nbsp;<span><?php echo $entry_good; ?></span><br />
							<br />
							<b><?php echo $entry_captcha; ?></b><br />
							<input type="text" name="captcha" value="" />
							<br />
							<img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
							<br />
							<div class="buttons">
							  <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
							</div>
						  </div>
					 </div>
				   <?php  } ?>
				   
				   <?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_content'][$languageID]) ) { ?>
					<div>
						<div id="tab-customtab" class="tab-content custom-tab">
							<div class="inner">
							<?php echo html_entity_decode( $productConfig['product_customtab_content'][$languageID], ENT_QUOTES, 'UTF-8'); ?>
							</div>
						</div>
					</div>
				<?php } ?> 
				   
				   
            </div>
        </div>   
    </div><!-- end description -->
   
    <div class="span5">
		 <h2><?php echo $heading_title; ?></h2>
			<div class="description">
			<?php if ($manufacturer) { ?>
			<span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
			<?php } ?>
			<span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
			<?php if ($reward) { ?>
			<span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
			<?php } ?>
			<span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>
		
		
		<?php if ($options) { ?>
		  <div class="options">
			<h2><?php echo $text_option; ?></h2>
			<br />
			<?php foreach ($options as $option) { ?>
			<?php if ($option['type'] == 'select') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <select name="option[<?php echo $option['product_option_id']; ?>]">
				<option value=""><?php echo $text_select; ?></option>
				<?php foreach ($option['option_value'] as $option_value) { ?>
				<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
				<?php if ($option_value['price']) { ?>
				(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
				<?php } ?>
				</option>
				<?php } ?>
			  </select>
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'radio') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <?php foreach ($option['option_value'] as $option_value) { ?>
			  <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
			  <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
				<?php if ($option_value['price']) { ?>
				(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
				<?php } ?>
			  </label>
			  <br />
			  <?php } ?>
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'checkbox') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <?php foreach ($option['option_value'] as $option_value) { ?>
			  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
			  <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
				<?php if ($option_value['price']) { ?>
				(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
				<?php } ?>
			  </label>
			  <br />
			  <?php } ?>
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'image') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <table class="option-image">
				<?php foreach ($option['option_value'] as $option_value) { ?>
				<tr>
				  <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
				  <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
				  <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
					  <?php if ($option_value['price']) { ?>
					  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
					  <?php } ?>
					</label></td>
				</tr>
				<?php } ?>
			  </table>
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'text') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'textarea') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'file') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
			  <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'date') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'datetime') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
			</div>
			<br />
			<?php } ?>
			<?php if ($option['type'] == 'time') { ?>
			<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			  <?php if ($option['required']) { ?>
			  <span class="required">*</span>
			  <?php } ?>
			  <b><?php echo $option['name']; ?>:</b><br />
			  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
			</div>
			<br />
			<?php } ?>
			<?php } ?>
		  </div>
	  <?php } ?>
		
		
		
		 
      <div class="price-cart">
	    <?php if ($price) { ?>
	  <div class="price">
	   <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
	  </div>
	  <?php } ?>
        <div class="product-extra">
          <div class="quantity-adder pull-left">
          <?php //echo $text_qty;    <span class="add-up add-action"><span class="icon-caret-up"></span></span> <span class="add-down add-action"><span class="icon-caret-down"></span></span> ?>
          <input type="hidden" name="quantity" size="2" value="1" />
         
          </div>
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
          &nbsp;
          <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
         <!-- <span>&nbsp;&nbsp;<?php //echo $text_or; ?>&nbsp;&nbsp;</span> -->
         
        </div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
	  
	  
      <?php /* if ($price) { ?>
      <div class="price-other"><?php echo $text_price; ?>
        <br />
        <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } */ ?>
	  
	
 
     <?php if ($profiles): ?>
      <div class="option">
          <h2><span class="required">*</span><?php echo $text_payment_profile ?></h2>
          <br />
          <select name="profile_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($profiles as $profile): ?>
              <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>
              <?php endforeach; ?>
          </select>
          <br />
          <br />
          <span id="profile-description"></span>
          <br />
          <br />
      </div>
      <?php endif; ?>
		

  
  
  <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  

    </div>
	</div>
  </div>
  
  
  
  <h3 class="span12 related-products">Related Products</h3>
  
  <?php if ($products) { ?>
	  <ul id="flexiselDemo1"> 
	   <?php foreach ($products as $product) { ?>
		<li>
			<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" /></a>
			<div class="name_last"><a href="<?php echo $product['href']; ?>">		
			<?php echo $product['name']; ?></a><br/>
				<span ><?php echo $product['price']; ?></span>
			</div>
		</li>			
		<?php } ?>
		</ul>
	<?php }
	 ?>
	<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 3
			});   
		});
	</script>
   

  
  <?php echo $content_bottom; ?></div>
  <?php if( $productConfig['product_enablezoom'] ) { ?>
<script type="text/javascript" src=" catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/javascript/elevatezoom/elevatezoom-min.js"></script>
<script type="text/javascript">
 <?php if( $productConfig['product_zoomgallery'] == 'slider' ) {  ?>
			$("#image").elevateZoom( {  gallery:'image-additional-carousel', 
										cursor: 'pointer', 
									 	<?php if( $productConfig['product_zoommode'] != 'basic' ) { ?>
										zoomType        : "<?php echo $productConfig['product_zoommode'];?>",
										lensShape : "<?php echo $productConfig['product_zoomlensshape'];?>",
										lensSize    : <?php echo (int)$productConfig['product_zoomlenssize'];?>,
										<?php } ?>
										galleryActiveClass: 'active' } ); 
  <?php } else { ?>
  var zoomCollection = '<?php echo $productConfig["product_zoomgallery"]=="basic"?".product-image-zoom":"#image";?>';
   $( zoomCollection ).elevateZoom({
      <?php if( $productConfig['product_zoommode'] != 'basic' ) { ?>
      zoomType        : "<?php echo $productConfig['product_zoommode'];?>",
      <?php } ?>
      lensShape : "<?php echo $productConfig['product_zoomlensshape'];?>",
      lensSize    : <?php echo (int)$productConfig['product_zoomlenssize'];?>,
  
   });
  <?php } ?> 
</script>
<?php } ?>


<link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/easy-responsive-tabs.css" />
<script src="catalog/view/javascript/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true,   // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#tabInfo');
                var $name = $('span', $info);

                $name.text($tab.text());

                $info.show();
            }
        });

     
    });
</script>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});
    
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
        $('#cart-total', window.parent.document ).html(json['total']);
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				window.location.href = json['redirects'];
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 

</div> 
<?php if( $SPAN[2] ): ?>
<div class="span<?php echo $SPAN[2];?>">	
	<?php echo $column_right; ?>
</div>
<?php endif; ?>
</div>
<?php echo $footer; ?>