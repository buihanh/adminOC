
<section class="secondcolon">
	<div class="container">
			<div class="message">
				<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
					<h2>SUBSCRIBE OUR NEWSLETTER</h2>
					<h4>Subscribe to our e-mail newsletter and take advantage of the campaigns.</h4>
				</div>
				<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
					  <form name="subscribe" id="newsletter1" class="pull-right "   >
					
						<input type="text" size="6" placeholder="Enter email address."  name="subscribe_email" id="subscribe" >
						<button  type="button"  onclick="email_subscribe()" class="btn btn-default">Subscribe</button></br/>
						<div style="color:red;" id="subscribe_result"></div>
					</form>
				</div><!-- end col-7 -->
			</div><!-- end message -->
	</div><!-- end container -->
</section><!-- end firstcolon -->

<script language="javascript">
	<?php 
  		if(!$thickbox) { 
	?>	
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#newsletter1").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#newsletter1").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   <?php }else{ ?>
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#newsletter1").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#newsletter1").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   <?php } ?>
   
$('.fancybox_sub').fancybox({
	width: 180,
	height: 180,
	autoDimensions: false
});
</script>

