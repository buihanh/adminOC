jQuery(document).ready(function() {
	/* Search */
	jQuery('.button-search').bind('click', function() {
		url = jQuery('base').attr('href') + 'index.php?route=product/search';
				 
		var search = jQuery('input[name=\'search\']').attr('value');
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	jQuery('#search').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = jQuery('base').attr('href') + 'index.php?route=product/search';
			 
			var search = jQuery('input[name=\'search\']').attr('value');
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	/* Ajax Cart */
	jQuery('#cart > .heading a').live('click', function() {
		jQuery('#cart').addClass('active');
		
		jQuery('#cart').load('index.php?route=module/cart #cart > *');
		
		jQuery('#cart').live('mouseleave', function() {
			jQuery(this).removeClass('active');
		});
	});
	
	/* Mega Menu */
	jQuery('#menu ul > li > a + div').each(function(index, element) {
		// IE6 & IE7 Fixes
		if (jQuery.browser.msie && (jQuery.browser.version == 7 || jQuery.browser.version == 6)) {
			var category = jQuery(element).find('a');
			var columns = jQuery(element).find('ul').length;
			
			jQuery(element).css('width', (columns * 143) + 'px');
			jQuery(element).find('ul').css('float', 'left');
		}		
		
		var menu = jQuery('#menu').offset();
		var dropdown = jQuery(this).parent().offset();
		
		i = (dropdown.left + jQuery(this).outerWidth()) - (menu.left + jQuery('#menu').outerWidth());
		
		if (i > 0) {
			jQuery(this).css('margin-left', '-' + (i + 5) + 'px');
		}
	});

	// IE6 & IE7 Fixes
	if (jQuery.browser.msie) {
		if (jQuery.browser.version <= 6) {
			jQuery('#column-left + #column-right + #content, #column-left + #content').css('margin-left', '195px');
			
			jQuery('#column-right + #content').css('margin-right', '195px');
		
			jQuery('.box-category ul li a.active + ul').css('display', 'block');	
		}
		
		if (jQuery.browser.version <= 7) {
			jQuery('#menu > ul > li').bind('mouseover', function() {
				jQuery(this).addClass('active');
			});
				
			jQuery('#menu > ul > li').bind('mouseout', function() {
				jQuery(this).removeClass('active');
			});	
		}
	}
	
	jQuery('.success img, .warning img, .attention img, .information img').live('click', function() {
		jQuery(this).parent().fadeOut('slow', function() {
			jQuery(this).remove();
		});
	});	
});

function getURLVar(key) {
	var value = [];
	
	var query = String(document.location).split('?');
	
	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
} 

function addToCart(product_id, quantity) {
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;

	jQuery.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: 'product_id=' + product_id + '&quantity=' + quantity,
		dataType: 'json',
		success: function(json) {
			jQuery('.success, .warning, .attention, .information, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			}
			
			if (json['success']) {
				jQuery('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				jQuery('.success').fadeIn('slow');
				
				jQuery('#cart-total').html(json['total']);
				
				jQuery('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}
function addToWishList(product_id) {
	jQuery.ajax({
		url: 'index.php?route=account/wishlist/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			jQuery('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				jQuery('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				jQuery('.success').fadeIn('slow');
				
				jQuery('#wishlist-total').html(json['total']);
				
				jQuery('html, body').animate({ scrollTop: 0 }, 'slow');
			}	
		}
	});
}

function addToCompare(product_id) { 
	jQuery.ajax({
		url: 'index.php?route=product/compare/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			jQuery('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				jQuery('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				jQuery('.success').fadeIn('slow');
				
				jQuery('#compare-total').html(json['total']);
				
				jQuery('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}