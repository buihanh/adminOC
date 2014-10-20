<?php
//print_r($currencies);
//die();
 if (count($currencies) > 1) { ?>
<form id="frm_currencies" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
 <div id="currency" class="currency-box">
  <div class="currency-switcher">      
	<div style="display: none;" class="currency_detail">
			<div class="currency-inner">
				  <?php foreach ($currencies as $currency) { ?>
					<?php if ($currency['code'] == $currency_code) { ?>
					<?php if ($currency['symbol_left']) { ?>
						<a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']." ".$currency['title']; ?></b></a>
					<?php } else { ?>
						<a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']." ".$currency['title']; ?></b></a>
					<?php } ?>
					<?php } else { ?>
					<?php if ($currency['symbol_left']) { ?>
						<a title="<?php echo $currency['title']; ?>" onclick="submitcurrencies('<?php echo $currency['code']; ?>')"><span><?php echo $currency['symbol_left']." ".$currency['title']; ?></span></a>
					<?php } else { ?>
						<a title="<?php echo $currency['title']; ?>" onclick="submitcurrencies('<?php echo $currency['code']; ?>')"><span><?php echo $currency['symbol_right']." ".$currency['title']; ?></span></a>
					<?php } ?>
					<?php } ?>
				<?php } ?>
				
				
				
				
			</div> <!--currency-inner-->
	</div>  <!--currency_detail-->
	<div class="select_curr"> 
	   <span><?php echo $currency_code; ?></span> <span class="caret"></span>
	</div> <!--select_curr-->
  </div> <!--currency-switcher-->
  
    
     <input type="hidden" name="currency_code" id="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  
  
</div> <!--currency-box-->

</form>
<?php } ?>
<script type="text/javascript">
	jQuery(function() {
			jQuery(".currency-switcher").hover(function() {
			jQuery('.select_curr').addClass('active');
			jQuery(".currency_detail").stop(true, true).slideDown(200, "easeInSine");
		},  
		function() {
			jQuery('.select_curr').removeClass('active');
			jQuery(".currency_detail").stop(true, true).fadeOut(100, "easeInCubic");
		});

	});
	
	function submitcurrencies(code){
		jQuery("#currency_code").val(code);
		jQuery('#frm_currencies').submit();
	}
</script>
