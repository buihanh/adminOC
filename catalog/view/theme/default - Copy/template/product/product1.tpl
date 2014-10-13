<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>




<div class="ma-main-container col1-layout">
    <div class="container product-info">
        <div class="container-inner">
            <div class="main">
                <div class="main-inner">
				<?php /*
				
                    <div class="breadcrumbs">
						<ul>
						
						
						<?php foreach ($breadcrumbs as $breadcrumb) { ?>
							<?php // echo $breadcrumb['separator']; ?><li ><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
							<?php } ?>
	
	
							<li class="home">
								<a title="Go to Home Page" href="http://www.plazathemes.com/">Home</a>
                                        <span>/ </span>
							</li>
							<li class="category3">
								<a title="" href="http://www.plazathemes.com/magento-themes.html">Themes</a>
                                        <span>/ </span>
							</li>
							<li class="product">
								<strong>MA MARIUS</strong>
                             </li>
						</ul>
					</div>
					
					*/ ?>
            <div class="col-main">
             
	<div class="product-view">
		<div class="product-essential">
			<form enctype="multipart/form-data" id="product_addtocart_form" method="post" action="http://www.plazathemes.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5wbGF6YXRoZW1lcy5jb20vbWFnZW50by10aGVtZXMvbWFyaXVzLW1hZ2VudG8tdGhlbWUuaHRtbA,,/product/129/">
    			<div class="product-name">
					<h1>MA MARIUS  magento theme</h1>
				</div>        
                 <div class="short-description">
                        <!--<h2>Quick Overview</h2>-->
                        <div class="std">Marius fashion store is 100% Magento responsive template with a clean and simple design. This magento template is perfect for Fashion Store,Clothes store</div>
                 </div>
                  <div class="view-actions">
                    <a onclick="window.open('')" title="View Demo" href="javascript:void(0)" class="view-demo">View Theme Demo</a>
                    <a rel="tooltip" title="Member Download" href="" class="member-download">Member Download</a>
                </div>       
        
        <div class="product-info row-fluid">
            <div class="products-tabs-contain span7">
                <ul class="product-tabs" id="">
					<li class=" active first" id="product_tabs_description"><a href="javascript:void(0)">Product Description</a></li>
					<li class="" id="product_tabs_additional"><a href="javascript:void(0)">Additional Information</a></li>
					<li class="last" id="product_tabs_product.tags"><a href="javascript:void(0)">Product Tags</a></li>
				</ul>
				<div id="product_tabs_description_contents" class="product-tabs-content">    <!--<h2>Details</h2>-->
					
					<?php echo $description; ?>
					
				</div>
			<div id="product_tabs_additional_contents" class="product-tabs-content" style="display: none;">    <h2>Additional Information</h2>
				   <?php if ($review_status) { ?>
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
					  <?php } ?>
    
			</div>
			<div id="product_tabs_product.tags_contents" class="product-tabs-content" style="display: none;">
				
			</div>
		
		 </div>
            <div class="product-shop span5">
                <div class="signle-license-title">SINGLE LICENSE</div>
                   <div id="product-options-wrapper" class="product-options">
						<dl>
							<dt><label>Downloadable Files</label></dt>
							<dd>
								<ul class="options-list" id="downloadable-links-list">
									<li><span class="label">
											<label for="links_164">marius_package.zip   </label>
										</span>
									</li>
								</ul>

							</dd>
						</dl>	
						<dl class="last">
						 
						
						
								<dt><label class="required"><em>*</em>Domain To Use</label>
						</dt>
						<dd>
							<div class="input-box">
									<input type="text" value="" name="options[235]" class="input-text required-entry  product-custom-option" id="options_235_text" onchange="opConfig.reloadPrice()">
									</div>
						</dd>
            
						<dt><label>Options</label></dt>
						
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
						
						<!--
							<dd class="last">
								<div class="input-box">
									<ul class="options-list" id="options-234-list">
										<li><input type="checkbox" price="19" value="334" id="options_234_2" name="options[234][]" onclick="opConfig.reloadPrice()" class="checkbox  product-custom-option"><span class="label"><label for="options_234_2">Installation (Recommended) <span class="price-notice">+<span class="price">$19.00</span></span></label></span></li>
										<li><input type="checkbox" price="99" value="335" id="options_234_3" name="options[234][]" onclick="opConfig.reloadPrice()" class="checkbox  product-custom-option"><span class="label"><label for="options_234_3">Multiple Domain License <span class="price-notice">+<span class="price">$99.00</span></span></label></span></li>
										<li><input type="checkbox" price="149" value="336" id="options_234_4" name="options[234][]" onclick="opConfig.reloadPrice()" class="checkbox  product-custom-option"><span class="label"><label for="options_234_4">Developer License <span class="price-notice">+<span class="price">$149.00</span></span></label></span></li>
									</ul>    
								</div>
							</dd>
						-->
						</dl>
            <p class="required">* Required Fields</p>
    </div>

		<div class="product-options-bottom cart">
		
		
			<div class="price-box">
				<span class="price">$49.00</span>                        
			</div>

			<div class="add-to-cart">
				<div class="quantity">
					<label for="qty"><?php echo $text_qty; ?></label>
					
					  <input type="text" class="input-text qty" name="quantity" size="2" value="<?php echo $minimum; ?>" />
						<input type="hidden"  name="product_id" size="2" value="<?php echo $product_id; ?>" />
					

				 </div>
			  <button type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button btn-cart" />
			  <span><span>Add to Cart</span></span></button>
			</div>
			
			
			<ul class="add-to-links">
				<li><a class="link-wishlist" onclick="productAddToCartForm.submitLight(this, 'http://www.plazathemes.com/wishlist/index/add/product/129/'); return false;" href="http://www.plazathemes.com/wishlist/index/add/product/129/">Add to Wishlist</a></li>
				<li><span class="separator">|</span> <a class="link-compare" href="http://www.plazathemes.com/catalog/product_compare/add/product/129/uenc/aHR0cDovL3d3dy5wbGF6YXRoZW1lcy5jb20vbWFnZW50by10aGVtZXMvbWFyaXVzLW1hZ2VudG8tdGhlbWUuaHRtbA,,/">Add to Compare</a></li>
			</ul>
		</div>
                    
       </div>
            
 </div>
 
 
 </form>

        <div class="clearer"></div>
   
    

					</div>
				</div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




  
  
  <?php echo $content_bottom; ?></div>
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
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
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


<script type="text/javascript">
//&lt;![CDATA[
Varien.Tabs = Class.create();
Varien.Tabs.prototype = {
  initialize: function(selector) {
	var self=this;
	$$(selector+' a').each(this.initTab.bind(this));
  },

  initTab: function(el) {
	  el.href = 'javascript:void(0)';
	  if ($(el.parentNode).hasClassName('active')) {
		this.showContent(el);
	  }
	  el.observe('click', this.showContent.bind(this, el));
  },

  showContent: function(a) {
	var li = $(a.parentNode), ul = $(li.parentNode);
	ul.select('li').each(function(el){
	  var contents = $(el.id+'_contents');
	  if (el==li) {
		el.addClassName('active');
		contents.show();
	  } else {
		el.removeClassName('active');
		contents.hide();
	  }
	});
  }
}
new Varien.Tabs('.product-tabs');
//]]&gt;
</script>

<?php echo $footer; ?>