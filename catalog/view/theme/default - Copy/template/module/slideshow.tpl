<?php if(isset($type))
		{
  ?>

        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/slitslider.css" />
		<script type="text/javascript" src="catalog/view/javascript/modernizr.custom.79639.js"></script>
		<noscript>
			<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/slitsliderJS.css" />
		</noscript>
   
        
        <div class="demo-2">
            <div id="slider" class="sl-slider-wrapper">

				<div class="sl-slider">
					<?php
					$i = 0;
					foreach ($banners as $banner) { ?>
					<div class="sl-slide" data-orientation="<?php if($i%2==0) echo 'vertical'; else echo "horizontal"; ?>" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
						<div class="sl-slide-inner">
							<div style=" background-image: url('<?php echo $banner['image']; ?>');" class="bg-img bg-img-1"></div>
							<h2><?php echo $banner['title']; ?></h2>
							<blockquote><div><?php echo $banner['description1']; ?></div>
							<br/>
							<a href="<?php echo $banner['link']; ?>">More Details</a>
							</blockquote>
							
						</div>
					</div>
					<?php 
					$i++;
					
					} ?>
					
				</div><!-- /sl-slider -->

				<nav id="nav-dots" class="nav-dots">
					
					<?php
					$i = 0;
					foreach ($banners as $banner) {
					if($i==0)
						echo '<span class="nav-dot-current"></span>';
					else
						echo '<span></span>';
					$i++;
					} ?>
				</nav>

			</div><!-- /slider-wrapper -->

		
        </div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/jquery.ba-cond.min.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/jquery.slitslider.js"></script>
		<script type="text/javascript">	
			$(function() {
			
				var Page = (function() {

					var $nav = $( '#nav-dots > span' ),
						slitslider = $( '#slider' ).slitslider( {
							onBeforeChange : function( slide, pos ) {

								$nav.removeClass( 'nav-dot-current' );
								$nav.eq( pos ).addClass( 'nav-dot-current' );

							}
						} ),

						init = function() {

							initEvents();
							
						},
						initEvents = function() {

							$nav.each( function( i ) {
							
								$( this ).on( 'click', function( event ) {
									
									var $dot = $( this );
									
									if( !slitslider.isActive() ) {

										$nav.removeClass( 'nav-dot-current' );
										$dot.addClass( 'nav-dot-current' );
									
									}
									
									slitslider.jump( i + 1 );
									return false;
								
								} );
								
							} );

						};

						return { init : init };

				})();

				Page.init();

				/**
				 * Notes: 
				 * 
				 * example how to add items:
				 */

				/*
				
				var $items  = $('<div class="sl-slide sl-slide-color-2" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1"><div class="sl-slide-inner bg-1"><div class="sl-deco" data-icon="t"></div><h2>some text</h2><blockquote><p>bla bla</p><cite>Margi Clarke</cite></blockquote></div></div>');
				
				// call the plugin's add method
				ss.add($items);

				*/
			
			});
		</script>
<?php } ?>