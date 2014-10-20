<div class="language-box">
    <div class="language-switcher">
        <div style="display: none;" class="language_detail">
            <div class="language-inner">
				<form action="<?php echo $action; ?>" method="post" id="frm_languge" enctype="multipart/form-data">

					<?php 
					
					$img = '';
					$name = '';
					foreach ($languages as $language) {
						if(isset($this->session->data['language']) && $this->session->data['language'] == $language['code'] )
						{
							$img = 'image/flags/'.$language['image'];
							$name = $language['name'];
						}
						
					?>
					<a onclick="submitlanguges('<?php echo $language['code']; ?>')"  href="javascript:void(0);" >
						<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"  />
						<span><?php echo $language['name']; ?></span> 
					</a>
					<?php } ?>
					<input type="hidden" id="language_code" name="language_code" value="" />
					<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />

				</form>				
            </div>
            <!--language-inner -->
        </div>
        <!--language_detail-->
        <div class="select_lang">
            <img src="<?php  echo $img; ?>" tppabs="<?php  echo $img; ?>"
                alt="<?php  echo $img; ?>" />
            <span><?php  echo $name; ?></span> <span class="caret"></span>
        </div>
        <!--select_lang-->
    </div>
    <!--language-switcher-->
</div>
<!--language-box-->
		
<script type="text/javascript">
	jQuery(function() {
			jQuery(".language-switcher").hover(function() {
			jQuery('.select_lang').addClass('active');
			jQuery(".language_detail").stop(true, true).slideDown(200, "easeInSine");
			},  
			function() {
			jQuery('.select_lang').removeClass('active');
			jQuery(".language_detail").stop(true, true).fadeOut(100, "easeInCubic");
			});

	});
	function submitlanguges(code){
		jQuery("#language_code").val(code);
		jQuery('#frm_languge').submit();
	}
</script>


