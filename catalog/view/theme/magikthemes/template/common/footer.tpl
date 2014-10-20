<?php 
	/******************************************************
	 * @package Congnghevietuc module for Opencart 1.5.x
	 * @version 1.0
	 * @author http://www.congnghevietuc.com
	 * @copyright	Copyright (C) Feb 2013 congnghevietuc.com <@emai:congnghevietuc@gmail.com>.All rights reserved.
	 * @license		GNU General Public License version 2
	*******************************************************/

	require_once( DIR_TEMPLATE.$this->config->get('config_template')."/template/libs/module.php" );
	$themeConfig = (array)$this->config->get('themecontrol');
	$themeName =  $this->config->get('config_template');
	$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );
	$LANGUAGE_ID = $this->config->get( 'config_language_id' );  

?>
<footer>

<!-- Footer Newsletter -->
<div class="newsletter-wrap">
<div class="newsletter">
    <form action="http://demo.magikthemes.com/index.php/astrademo1/newsletter/subscriber/new/" method="post" id="newsletter-validate-detail1">
     <div>
      <h4><span>Astra newsletter</span></h4>
      <input type="text" name="email" id="newsletter1" title="Sign up for our newsletter" class="input-text required-entry validate-email" placeholder="Enter your email address" />                              
      <button type="submit" title="Subscribe" class="subscribe"><span>Subscribe</span></button>
     </div>
    </form>
    <script type="text/javascript">
    //<![CDATA[
        var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail1');
    //]]>
    </script>
</div> <!--newsletter-->
</div> <!--newsletter-wrap--> 
<div class="footer informative">

<!-- BEGIN INFORMATIVE FOOTER -->  
  <div class="inner">
	<div class="footer-column-1">
		<div class="footer-logo"><a title="Logo" href="#"><img src="logo.png" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/images/logo.png" alt="footer  logo" /></a></div>
		<address><em class="add-icon">&nbsp;</em>123 Main Street, Anytown, <br /> &nbsp;CA 12345 USA</address>
		<div class="phone-footer"><em class="phone-icon">&nbsp;</em> +1 800 123 1234</div>
		<div class="email-footer"><em class="email-icon">&nbsp;</em> <a href="mailto:support@magikcommerce.com">support@magikcommerce.com</a></div>
	</div>
	<div class="footer-column">
		<h4>Shopping Guide</h4>
		<ul class="links">
			<li class="first"><a title="How to buy" href="#">How to buy</a></li>
			<li><a title="FAQs" href="#">FAQs</a></li>
			<li><a title="Payment" href="#">Payment</a></li>
			<li><a title="Shipment" href="#">Shipment</a></li>
			<li><a title="Where is my order?" href="#">Where is my order?</a></li>
			<li class="last"><a title="Return policy" href="#">Return policy</a></li>
		</ul>
	</div>
	<div class="footer-column">
		<h4>Style Advisor</h4>
			<ul class="links">
				<li class="first"><a title="Your Account" href="index-8.htm" tppabs="http://demo.magikthemes.com/index.php/astrademo1/customer/account/">Your Account</a></li>
				<li><a title="Information" href="#">Information</a></li>
				<li><a title="Addresses" href="#">Addresses</a></li>
				<li><a title="Addresses" href="#">Discount</a></li>
				<li><a title="Orders History" href="#">Orders History</a></li>
				<li class="last"><a title=" Additional Information" href="#"> Additional Information</a></li>
			</ul>
	</div>
	<div class="footer-column">
		<h4>Information</h4>
			<ul class="links">
				<li class="first"><a title="Site Map" href="index-5.htm" tppabs="http://demo.magikthemes.com/index.php/astrademo1/catalog/seo_sitemap/category/">Site Map</a></li>
				<li><a title="Search Terms" href="index-6.htm" tppabs="http://demo.magikthemes.com/index.php/astrademo1/catalogsearch/term/popular/">Search Terms</a></li>
				<li><a title="Advanced Search" href="index-7.htm" tppabs="http://demo.magikthemes.com/index.php/astrademo1/catalogsearch/advanced/">Advanced Search</a></li>
				<li><a title="History" href="# ">History</a></li>
				<li><a title="Suppliers" href="#">Suppliers</a></li>
				<li class=" last"><a class="link-rss" title="Our stores" href="#">Our stores</a></li>
			</ul>
	</div> 
	<div class="footer-column-last">
     
        <div class="social">
		   <h4>Follow Us</h4>
		   <ul class="link">
					  <li class="fb"><a  target="_blank" rel="nofollow" href="#" title="Facebook"></a></li>
					  <li class="tw"><a target="_blank" rel="nofollow"  href="#" title="Twitter"></a></li>
					  <li class="googleplus"><a target="_blank" rel="nofollow" href="#" title="GooglePlus"></a></li>
					  <li class="rss"><a target="_blank" rel="nofollow" href="#" title="RSS"></a></li>
					  <li class="pintrest"><a target="_blank" rel="nofollow" href="#" title="PInterest"></a></li>
					  <li class="linkedin"><a  target="_blank" rel="nofollow" href="#" title="Linkedin"></a></li>
					  <li class="youtube"><a target="_blank" rel="nofollow" href="#" title="Youtube"></a></li>
				   </ul>
		</div> <!--social-->
			<br />
		<br />
		<div class="payment-accept">
			<h4>We Accept</h4>
			<div><img src="payment-1.png" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/images/payment-1.png" alt="payment1" /> <img src="payment-2.png" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/images/payment-2.png" alt="payment2" /> <img src="payment-3.png" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/images/payment-3.png" alt="payment3" /> <img src="payment-4.png" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/images/payment-4.png" alt="payment4" /></div>
		</div>  
	</div> <!--footer-column-last-->
</div> <!--inner-->

<div class="footer-bottom">
	<div class="inner">
		<div class="coppyright">Copyright &copy; 2014. All Rights Reserved. Designed by <a href="javascript:if(confirm(%27http://www.magikcommerce.com/  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.magikcommerce.com/%27" tppabs="http://www.magikcommerce.com/">magikcommerce.com</a></div>
		<div class="bottom_links">
			<ul class="links">
				<li><a title="Magento Themes" href="javascript:if(confirm(%27http://www.magikcommerce.com/magento-themes-templates  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.magikcommerce.com/magento-themes-templates%27" tppabs="http://www.magikcommerce.com/magento-themes-templates">Magento Themes</a></li>
				<li><a title="Responsive Themes" href="javascript:if(confirm(%27http://www.magikcommerce.com/magento-themes-templates/responsive-themes  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.magikcommerce.com/magento-themes-templates/responsive-themes%27" tppabs="http://www.magikcommerce.com/magento-themes-templates/responsive-themes">Responsive Themes</a></li>
				<li class="last"><a title="Magento Extensions" href="javascript:if(confirm(%27http://www.magikcommerce.com/magento-extensions  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.magikcommerce.com/magento-extensions%27" tppabs="http://www.magikcommerce.com/magento-extensions">Magento Extensions</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- BEGIN SIMPLE FOOTER -->  
           

</div> <!--footer-->

</footer>






<div class="orange-slider">
    <div class="text alignleft">
        Need Help?</div>
    <div class="icons">
        <a class="show_hide" id="questionbox-side-phonebutton" href="javascript:void(0)"><i
            class="icon-phones"></i></a><a class="show_hide1" id="questionbox-side-emailbutton"
                href="javascript:void(0)"><i style="font-size: 20px" class="icon-email"></i>
        </a>
    </div>
    <!--icons-->
</div>
<!--orange-slider-->
<div id="hideShow" style="text-align: left; display: none">
    <div class="right-side-content hidden1">
        <!--Contact Static Block -->
        <div class="slider-phone active">
            <h2>
                TALK TO US</h2>
            <h3>
                AVAILABLE 24/7</h3>
            <p class="textcenter">
                Want to speak to someone? We 're here 24/7 to answer any questions. Just call!<br />
                <br />
                <span class="phone-number">+1 800 123 1234</span></p>
        </div>
        <a href="javascript:void(0)" id="hideDiv" class="slider-close"></a>
    </div>
    <!--right-side-content hidden1-->
</div>
<!--#hideShow-->


<!-- Contact Us Form -->
<div id="hideShow1" style="text-align: left; display: none">
    <div class="right-side-content hidden1">
        <div class="slider-email active">
          
            <div id="formSuccess" style="display: none;">
                Your inquiry was submitted and will be responded to as soon as possible. Thank you
                for contacting us.</div>
            <form action="" id="contactForm1" method="post">
            <div class="column sixty">
                <h2>
                    TALK TO US</h2>
                <ul>
                    <li>
                        <label for="name">
                            Name<em class="required">*</em></label>
                        <input name="name" id="name_contact" title="Name" value="" class="input-text required-entry"
                            type="text" />
                    </li>
                    <li>
                        <label for="email">
                            Email<em class="required">*</em></label>
                        <input name="email" id="email_contact" title="Email" value="" class="input-text required-entry validate-email"
                            type="text" />
                    </li>
                    <li>
                        <label for="telephone">
                            Telephone</label>
                        <input name="telephone" id="telephone_contact" title="Telephone" value="" class="input-text"
                            type="text" />
                    </li>
                    <p class="required">
                        * Required Fields</p>
                </ul>
            </div>
            <!--column sixty-->
            <div class="column fourty last">
                <div class="padding">
                    <label for="comment">
                        Comment<em class="required">*</em></label>
                    <textarea name="comment" id="comment_contact" title="Comment" class="required-entry input-text"
                        cols="5" rows="3"></textarea>
                    <div class="textright">
                        <input type="text" name="hideit" id="hideit" value="" style="display: none !important;" />
                        <button onclick="submitcontact();" type="button" title="Submit" class="button btn-sent">
                            <span>Submit</span></button>
                        <img src="mgkloading1.gif" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/images/mgkloading1.gif"
                            id="loader" style="display: none;">
                    </div>
                    <!--textright-->
                </div>
                <!--padding-->
            </div>
            <!--column fourty last-->
           </form>
            <script type="text/javascript">
//<![CDATA[
			var formId = 'contactForm1';
            var myForm = new VarienForm(formId, true);
			function submitcontact(){
				 if (myForm.validator.validate()) {
			        var url = jQuery('base').attr('href') + 'index.php?route=information/contact/contact';
					var name = jQuery('#name_contact').val();
					var email = jQuery('#email_contact').val();
					var telephone = jQuery('#telephone_contact').val();
					var comment = jQuery('#comment_contact').val();				
					jQuery.ajax({        
							type: "post",            
							url : url,            
							data:{'name':name, 'email':email,'telephone':telephone,'enquiry':comment},            
							dataType : "html",            
							success : function(data){
								jQuery('#name_contact').val('');
								jQuery('#email_contact').val('');
								jQuery('#telephone_contact').val('');
								jQuery('#comment_contact').val('');	
								jQuery('#formSuccess').show();
								setTimeout(function() {
									jQuery("#hideDiv1").fadeOut(300); 
									jQuery('#formSuccess').hide();
									jQuery("#hideDiv1").trigger('click');
								}, 5000);
								
							}
						});
				}
			}
//]]>
            </script>
            
            <a href="javascript:void(0)" id="hideDiv1" class="slider-close"></a>
        </div>
        <!--slider-email active-->
    </div>
    <!--right-side-content hidden1-->
</div>



<!--#hideShow1-->
<script language="javascript" type='text/javascript'>

    jQuery('.show_hide').click(function () {
        jQuery("#hideShow").show();
        jQuery("#hideShow1").hide();
    });

    jQuery('.show_hide1').click(function () {
        jQuery("#hideShow1").show();
        jQuery("#hideShow").hide();
    });

    jQuery('#hideDiv').click(function () {
        jQuery("#hideShow").hide();
    });

    jQuery('#hideDiv1').click(function () {
        jQuery("#hideShow1").hide();
    });

</script>
<script type='text/javascript'>
    jQuery(function () {
        if (document.cookie.indexOf('visited=true') == -1) {
            var overlay = jQuery('<div id="overlay"></div>');
            overlay.show();
            overlay.appendTo(document.body);
            jQuery('.popup1').show();

            jQuery('.x').click(function () {
                if (document.getElementById('notshowpopup').checked) {
                    var oneDays = 1000 * 60 * 60 * 24 * 1;
                    var expires = new Date((new Date()).valueOf() + oneDays);
                    document.cookie = "visited=true;expires=" + expires.toUTCString();
                }
                jQuery('.popup1').hide();
                overlay.appendTo(document.body).remove();
                return false;

            });
        }
    });
</script>
<div class="popup1">
    <div class="newsletter-sign-box">
        <div class="newsletter">
            <img src="catalog/view/theme/<?php echo $themeName;?>/image/f-box-close-icon.png"
                tppabs="catalog/view/theme/<?php echo $themeName;?>/image/f-box-close-icon.png"
                alt="close" class="x" id="x" />
            <div id="formSuccess1" style="display: none;">
                Thank you for your subscription.</div>
            <form method="post" id="popup-newsletter" name="popup-newsletter" class="email-form">
            <h3>
                Newsletter Sign up</h3>
            <div class="line">
                &nbsp;</div>
            <h4>
                sign up for our exclusive email list and be the first to hear of special promotions,
                new arrivals, and designer news.</h4>
            <div class="newsletter-form">
                <div class="input-box">
                    <input type="text" name="email" id="newsletter2" title="Sign up for our newsletter"
                        placeholder="Enter your email address" class="input-text required-entry validate-email" />
                    <button type="submit" title="Subscribe" class="button subscribe">
                        <span>Subscribe</span></button>
                    <img src="mgkloading1.gif" tppabs="http://demo.magikthemes.com/skin/frontend/rwd/astra/images/mgkloading1.gif"
                        alt="Loading" id="loader1" style="display: none; margin-left: 120px; margin-top: 10px;">
                </div>
                <!--input-box-->
            </div>
            <!--newsletter-form-->
            <label class="subscribe-bottom">
                <input type="checkbox" name="notshowpopup" id="notshowpopup">Don’t show this popup
                again</label>
            </form>
            <script type="text/javascript">
//<![CDATA[
                   var formId1 = 'popup-newsletter';
                var myForm1 = new VarienForm(formId1, true);
                var postUrl1 = "http://demo.magikthemes.com/index.php/astrademo1/newsletter/subscriber/new/";
                function doAjax1() {
                    if (myForm1.validator.validate()) {
                        if (document.getElementById('notshowpopup').checked) {
                            var oneDays = 1000 * 60 * 60 * 24 * 1;
                            var expires = new Date((new Date()).valueOf() + oneDays);
                            document.cookie = "visited=true;expires=" + expires.toUTCString();
                        }
                        var request = new Ajax.Request(
            postUrl1,
            {
                method: 'post',
                onLoading: function () {
                    document.getElementById('loader1').style.display = 'inline';
                },
                onComplete: function (transport) { // Defining Complete Callback Function                     
                    $(formId1).hide();
                    $('formSuccess1').show();

                },
                parameters: $(formId1).serialize(true)    // Seriallizing the form input values
            }
            );
                        return false;
                    }

                }

                new Event.observe(formId1, 'submit', function (e) {
                    e.stop();
                    doAjax1();
                });

//]]>
            </script>
        </div>
        <!--newsletter-->
    </div>
    <!--newsletter-sign-box-->
</div>
<!--popup1-->
</body> </html>