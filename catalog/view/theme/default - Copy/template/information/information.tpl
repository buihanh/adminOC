<?php echo $header; ?>



<div id="content" class="container">

<?php
/*  if($column_left && $column_left!='') echo "<div class='span3'>".$column_left."</div>"; */ ?>


<?php /*  if($column_right && $column_left)
		echo "<div class='span6'>";
		elseif(isset($column_left) || isset($column_right)) 
		echo "<div class='span9'>";
		else
		echo "<div>"; */
		
		
		echo $content_top; ?>
	  <div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	  </div>
	  <h1><?php echo $heading_title; ?></h1>
	  <?php echo $description; ?>
	  <div class="buttons">
		<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
	  </div>
 
   
   <?php /* if($column_right) echo "<div class='span3'>".$column_right."</div>";  */?>

   
  <?php echo $content_bottom; ?>
  </div>
<?php echo $footer; ?>