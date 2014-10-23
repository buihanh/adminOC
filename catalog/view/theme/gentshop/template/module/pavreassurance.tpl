<?php
	$cols   = count($pavreassurances); 
	if (!empty($pavreassurances)) { ?>
		<div class="box-module-pavreassurances <?php echo $prefix_class ?>">
				<div class="row box-outer">
						<?php foreach ($pavreassurances as $reassurance) { ?>
							<div class="col-lg-<?php echo floor(12/$cols) ?> col-md-<?php echo floor(12/$cols) ?> col-sm-<?php echo floor(12/$cols) ?> col-xs-12 column">
								<div class="reassurances-center">
									<span class="icon-name fa <?php echo $reassurance['select_icon'] ?>"></span>
									<div class="description">										
										<h4><?php echo $reassurance['title']; ?></h4>										
										<?php echo htmlspecialchars_decode($reassurance['caption']); ?>	
										<a href="javascript:void(0);" class="pavreassurances arrow"><i class="fa fa-plus"></i></a>
										<div class="mask" style="display:none;">
											<?php echo htmlspecialchars_decode($reassurance['detail']); ?>
										</div>
									</div>													
								</div>
							</div>
						<?php } ?>
				</div>
		</div>
	<?php } ?>

<script type="text/javascript"><!--
$(document).ready(function() {
	$(".pavreassurances").bind("click", function(){
		$('.pavreassurances').colorbox({
			overlayClose: true,
			opacity: 0.5,
		  	width: '40%', 
            height: '55%',
			html:$(this).parent().find(".mask").html(),
		});
		return;
	});
});
//--></script>
