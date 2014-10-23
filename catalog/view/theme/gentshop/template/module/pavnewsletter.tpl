<div class="pav-custom  pav-newsletter" id="newsletter_<?php echo $position.$module;?>">
	<form id="formNewLestter" class="formNewLestter" method="post" action="<?php echo $action; ?>">
		<div class="content">
			<div class="wapper">
				<div class="description">
					<span class="title"><?php echo $this->language->get("entry_newsletter");?></span>
					<br/>
					<?php echo html_entity_decode( $description );?>
				</div>
				<div class="input-form">
					<input type="text" class="form-control input-md inputNew" <?php if(!isset($customer_email)): ?> onblur="javascript:if(this.value=='')this.value='<?php echo $this->language->get("default_input_text");?>';" onfocus="javascript:if(this.value=='<?php echo $this->language->get("default_input_text");?>')this.value='';"<?php endif; ?> value="<?php echo isset($customer_email)?$customer_email:$this->language->get("default_input_text");?>" size="18" name="email">
				</div>
				<div class="button-submit">
					<input type="submit" name="submitNewsletter" class="btn btn-outline" value="<?php echo $this->language->get("button_ok");?>">
				</div>
			</div>
		</div>
		<input type="hidden" value="1" name="action">
	</form>
	
	
	
	<div class="block_content">
		
	</div>
</div>
<script type="text/javascript">
$( document ).ready(function() {
	$('#formNewLestter').on('submit', function() {
		var email = $('.inputNew').val();
		$(".success_inline, .warning_inline, .error").remove();
		if(!isValidEmailAddress(email)) {
			$('.inputNew').before("<div class=\"error alert alert-danger\"><?php echo $this->language->get('valid_email'); ?></div>");
			$('.inputNew').focus();
			return false;
		}
		var url = "index.php?route=module/pavnewsletter/subscribe";
		$.ajax({
			type: "post",
			url: url,
			data: $("#formNewLestter").serialize(),
			dataType: 'json',
			success: function(json)
			{
				$(".success_inline, .warning_inline, .error").remove();
				if (json['error']) {
					$('.inputNew').before("<div class=\"warning_inline alert alert-danger\">"+json['error']+"</div>");
				}
				if (json['success']) {
					$('.inputNew').before("<div class=\"success_inline alert alert-success\">"+json['success']+"</div>");
				}
			}
		});
		return false;
	});
});

function isValidEmailAddress(emailAddress) {
	var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
	return pattern.test(emailAddress);
}
</script>