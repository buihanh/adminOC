
		
		
		
		
		
		
		
		<div class="ma-footer-container">
			<div class="container">
				<div class="container-inner">
				<div class="footer-static row-fluid">
						<div class="f-col f-col1 col-xs-12 col-sm-3">
		<div class="footer-static-title">
		<h3>PLAZATHEMES CLUB</h3>
		</div>
		<div class="footer-static-content">
		<ul>
		<li class="first"><a href="http://www.plazathemes.com/magento-themes.html" title="Magento Themes">Magento Themes</a></li>
		<li><a href="http://www.plazathemes.com/magento-extensions.html" title="Magento Extensions">Magento Extensions</a></li>
		<li><a href="http://www.plazathemes.com/member" title="Membership Login">Membership Login</a></li>
		<li><a href="http://www.plazathemes.com/membership-pricing" title="Membership Pricing">Membership Pricing</a></li>
		<li><a href="http://www.plazathemes.com/free4you.html" title="Free Magento Themes">Free4You</a></li>
		<li><a href="http://www.plazathemes.com/demo" title="Demo Magento Themes">Demo Magento Themes</a></li>
		</ul>
		</div>
		</div>
		<div class="f-col f-col2 col-xs-12 col-sm-3">
		<div class="footer-static-title">
		<h3>QUICK NAVIGATION</h3>
		</div>
		<div class="footer-static-content">
		<ul>
		   <?php foreach ($informations as $information) { ?>
		  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
		  <?php } ?>

	  <li><a href="<?php echo $sitemap; ?>" title="<?php echo $text_sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		<li class="last"><a href="<?php echo $contact; ?>" title="<?php echo $text_contact; ?>"><?php echo $text_contact; ?></a></li>
		</ul>
		</div>
		</div>
		
		
		<div class="f-col f-col3 col-xs-12 col-sm-3">
		<div class="footer-static-title">
		<h3>Face Book</h3>
		</div>
		<div class="footer-static-content"> <!-- start enable module -->
		</div>
		</div>
		
		
		
		
		<div class="f-col f-col4 col-xs-12 col-sm-3">
		<div class="footer-static-title">
		<h3>Payment Method</h3>
		</div>
		<div class="footer-static-content">We are using secure Paypal payment method. You can pay directly form your Credit Card via Paypal and NEVER store your card information on our site.</div>
		<div class="footer-static-title">
		<h3>newsletter</h3>
		</div>
		<div class="footer-static-content"><div class="block block-subscribe">
			<div class="block-title">
				<strong><span>Newsletter</span></strong>
			</div>
				<div class="block-content">
					<div class="input-box">
						<input  id="subscribe_email" type="text" class="input-text required-entry validate-email" title="Sign up for our newsletter" id="newsletter" name="email">
						<button onclick="subscribe();" class="button" title="Go!" type="submit"><span><span>Go!</span></span></button>
					
					<p class="err"></p>
					</div>
					<div class="form-subscribe-header">
						<label for="newsletter">By subcribing you will get the
		latest news from us.</label>
					</div>
				</div>
		
			<script type="text/javascript">
			
			function subscribe(){
				var subscribe_email = $("#subscribe_email").val();	
				$.ajax({
						 type: "post",
						 url : 'index.php?route=module/newslettersubscribe/subscribe',  
						 data:{'subscribe_email':subscribe_email,'subscribe_name':'customers'},
						 dataType : "html",
						 success : function(response){	
							$(".err").html(response);
							$(".err").css("color","red");
						}
					});
										
			}
			
			</script>
		</div>
		</div>
		</div>        </div>
				<div class="footer">
					<div class="row-fluid">
						<div class="col-xs-12 col-sm-6">
							<address><?php echo $powered; ?>. All Rights Reserved.</address>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="payment">
							<ul>
								<li class="first"><img alt="" src="http://www.plazathemes.com/media/wysiwyg/payment1.png"></li>
								<li><img alt="" src="http://www.plazathemes.com/media/wysiwyg/payment2.png"></li>
								<li><img alt="" src="http://www.plazathemes.com/media/wysiwyg/payment3.png"></li>
								<li class="last"><img alt="" src="http://www.plazathemes.com/media/wysiwyg/payment4.png"></li>
							</ul>
						</div>         
						</div>
					</div>
					<div class="hidden-phone" id="back-top" style="display: block;">	</div>
				</div>
				</div>
			</div>
		</div>
     </div>
</div>


<script>
$(document).ready(function() {
	$('.scroll-top').on('click', function(event) {
		event.preventDefault();
		$('html, body').animate({scrollTop:0}, 'slow'); 		
	});
});
</script>

<a href="#" class="scroll-top back-to-top"><span></span></a>

</body></html>
