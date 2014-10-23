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
	
	<div id="content">
		<?php echo $content_top; ?>
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		<h1><?php echo $heading_title; ?></h1>
		
		<div class="inner">
			<h2><?php echo $text_my_account; ?></h2>
			<nav class="content">
				<ul>
					<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
					<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
					<li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
				</ul>
			</nav>
			<h2><?php echo $text_my_tracking; ?></h2>
			<nav class="content">
				<ul>
					<li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
				</ul>
			</nav>
			<h2><?php echo $text_my_transactions; ?></h2>
			<nav class="content">
				<ul>
					<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
				</ul>
			</nav>
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