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
  <h1>Download product</h1>
  <?php if($orders) {  ?>
	<table width="100%" border="1">
		<tr>
			<th>#ID</th>
			<th>Product</th>
			<th>Download</th>
		</tr>
	  <?php foreach ($orders as $order) { ?>
			<tr>
				<td><?php echo $order['product_id']; ?></td>
				<td>
				<img src="<?php echo $order['image'];  ?>" />
				<?php echo $order['name']; ?></td>
				<td>
				<?php  if($order['order_status_id']==5){ ?>
					<a href="<?php echo $order['href']; ?>" ><?php echo $order['filesoure']; ?></a>
				<?php } ?>
				</td>
			</tr>
	  <?php } ?>
	</table>
  <?php
	}
  ?>
  
  

  <?php echo $content_bottom; ?></div>
</div> 
<?php if( $SPAN[2] ): ?>
<div class="span<?php echo $SPAN[2];?>">	
	<?php echo $column_right; ?>
</div>
<?php endif; ?>
<?php echo $footer; ?>