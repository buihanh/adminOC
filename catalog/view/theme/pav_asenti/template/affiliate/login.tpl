<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" ); ?>
<?php echo $header; ?>

<?php if( $SPAN[0] ): ?>
	<aside class="span<?php echo $SPAN[0];?>">
		<?php echo $column_left; ?>
	</aside>
<?php endif; ?> 

<section class="span<?php echo $SPAN[1];?>">
	<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
	<?php } ?>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
 
	<div id="content" class="">
		<?php echo $content_top; ?>
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		<h1><?php echo $heading_title; ?></h1>
		
		<?php echo $text_description; ?>
		<div class="login-content">
			<div class="row-fluid">
				<div class="span6">
					<div class="inner">
						<h2><?php echo $text_new_affiliate; ?></h2>
						<div class="content"><?php echo $text_register_account; ?> <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
					</div>
				</div>
			
				<div class="span6">
					<div class="inner">
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
							<h2><?php echo $text_returning_affiliate; ?></h2>
							<div class="content">
								<p><?php echo $text_i_am_returning_affiliate; ?></p>
								<b><?php echo $entry_email; ?></b><br />
								<input type="text" name="email" value="<?php echo $email; ?>" class="span10" />
								<br />								
								<b><?php echo $entry_password; ?></b><br />
								<input type="password" name="password" value="<?php echo $password; ?>" class="span10" />
								<br />
								<p><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></p>
								
								<input type="submit" value="<?php echo $button_login; ?>" class="button" />
								<?php if ($redirect) { ?>
								<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
								<?php } ?>
							</div>
						</form>
					</div>					
				</div>
			</div>			
		</div>
	<?php echo $content_bottom; ?>
  </div>
</section> 

<?php if( $SPAN[2] ): ?>
<aside class="span<?php echo $SPAN[2];?>">	
	<?php echo $column_right; ?>
</aside>
<?php endif; ?>

<?php echo $footer; ?>