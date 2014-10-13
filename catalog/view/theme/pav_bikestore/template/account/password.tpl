<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" ); ?>
<?php echo $header; ?>
<?php if( $SPAN[0] ): ?>
	<div class="span<?php echo $SPAN[0];?>">
		<?php echo $column_left; ?>
	</div>
<?php endif; ?> 
<div class="span<?php echo $SPAN[1];?>">
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2><?php echo $text_password; ?></h2>
	<hr/>
	<div class="col-md-12">
		<div class="col-md-6">
			<div class="form-group">
				<label><span class="required">*</span> <?php echo $entry_password; ?></label>
				<input  type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" class="form-control"  >
			
				<?php if ($error_password) { ?>
					<span class="error"><?php echo $error_password; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label><span class="required">*</span> <?php echo $entry_confirm; ?></label>
				<input  type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" class="form-control"  >
				<?php if ($error_confirm) { ?>
				<span class="error"><?php echo $error_confirm; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="col-md-12">
			<button type="submit" class="btn btn-default"><?php echo $button_continue; ?></button>
		</div>
	</div>
	
	
    
  </form>
  
  
  
  <?php echo $content_bottom; ?></div>
 </div> 
<?php if( $SPAN[2] ): ?>
<div class="span<?php echo $SPAN[2];?>">	
	<?php echo $column_right; ?>
</div>
<?php endif; ?>
<?php echo $footer; ?>