<?php

 if($show==1){ ?>
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
<?php  } ?>
<?php if($show==0){ ?>

<div class="widget">
	<h3 class="title">Stay Updated</h3>
	<p>Subscribe to our e-mail newsletter and take advantage of the campaigns.</p>
	<form name="subscribe" id="newsletter1" >
		<input type="text" size="6" placeholder="Enter email address." name="s" id="subscribe">
		<button type="button"  onclick="email_subscribe()"  class="btn btn-default">Subscribe</button>
		<div style="color:red;" id="subscribe_result"></div>
	</form>
</div><!-- end widget -->

<?php /*
<div class="widget">
		<h3 class="title">Active Campaings</h3>
		<div id="accordion" class="accordion">
		  <div data-effect="slide-bottom" class="accordion-group effect-slide-bottom in" style="transition: all 0.7s ease-in-out 0s;">
			<div class="accordion-heading">
			  <a href="#collapseOne" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">
				<em class="icon-fixed-width fa fa-plus"></em>Daily Deal
			  </a>
			</div>
			<div class="accordion-body collapse" id="collapseOne" style="height: 0px;">
			  <div class="panel-body">
				<p>Anim pariatur cliche reprehenderit, enim eiusmod high life terry richardson ad squid..</p>
			  </div>
			</div>
		  </div>
		  <div data-effect="slide-bottom" class="accordion-group effect-slide-bottom in" style="transition: all 0.7s ease-in-out 0s;">
			<div class="accordion-heading">
			  <a href="#collapseTwo" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">
				<em class="icon-fixed-width fa fa-plus"></em>Free Shipping
			  </a>
			</div>
			<div class="accordion-body collapse" id="collapseTwo" style="height: 0px;">
			  <div class="panel-body">
				<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute...</p>
			  </div>
			</div>
		  </div>
		</div><!-- end accordion -->
	</div>
	
	

<?php 
*/
} 

?>

<?php  /*
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content" style="text-align: center;">
  
  <?php 
   if($thickbox) { ?>
	<a href="#frm_subscribe" title="Newsletter Subscribe" class="fancybox_sub"> <?php echo($text_subscribe); ?> </a>
  <?php }  ?>
  <?php 
   if($thickbox) { ?> <div id="frm_subscribe_hidden" style="display:none;"> <?php } ?>
  <div id="frm_subscribe">
  <form name="subscribe" id="subscribe"   >
  <table border="0" cellpadding="2" cellspacing="2">
   <tr>
     <td align="left"><span class="required">*</span>&nbsp;<?php echo $entry_email; ?><br /><input type="text" value="" name="subscribe_email" id="subscribe_email"></td>
   </tr>
   <tr>
     <td align="left"><?php echo $entry_name; ?>&nbsp;<br /><input type="text" value="" name="subscribe_name" id="subscribe_name"> </td>
   </tr>
   <?php 
     for($ns=1;$ns<=$option_fields;$ns++) {
     $ns_var= "option_fields".$ns;
   ?>
   <tr>
    <td align="left">
      <?php 
       if($$ns_var!=""){
         echo($$ns_var."&nbsp;<br/>");
         echo('<input type="text" value="" name="option'.$ns.'" id="option'.$ns.'">');
       }
      ?>
     </td>
   </tr>
   <?php 
     }
   ?>
   <tr>
     <td align="left">
     <a class="button" onclick="email_subscribe()"><span><?php echo $entry_button; ?></span></a><?php if($option_unsubscribe) { ?>
          <a class="button" onclick="email_unsubscribe()"><span><?php echo $entry_unbutton; ?></span></a>
      <?php } ?>    
     </td>
   </tr>
   <tr>
     <td align="center" id="subscribe_result"></td>
   </tr>
  </table>
  </form>
  </div>
  <?php if($thickbox) { ?> </div> <?php } ?>
  </div>
  <div class="bottom">&nbsp;</div>
  
  */
  ?>
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

