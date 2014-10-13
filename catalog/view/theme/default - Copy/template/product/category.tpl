<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>



<div class="ma-main-container col1-layout">
    <div class="container">
        <div class="container-inner">
           <div class="main">
             <div class="main-inner">
                  <div class="breadcrumbs">
					<ul>						
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
						<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php } ?>					
					</ul>
				</div>
				
<div class="col-main">							
	
	<div class="block-catalog">
		<!-- <div class="block-catalog-title">
		<h2><?php echo $heading_title; ?></h2>
		</div> -->
		<div class="block-catalog-des">
		<?php if ($description) { ?>
			<?php echo $description; ?>
		<?php } ?>
		</div>
	</div>

   <?php echo $content_top; ?>
	
	<div class="category-products">      
        
     <?php 
	 $i = 0;
	
//	echo "<pre>";
// print_r($products);
//	die();
	 foreach ($products as $product) {
		if($i%3==0)
		{
			$j = 1;
		echo '<div class="products-grid row-fluid">';
		}
		else $j++;
	 ?>      
     
        <div class="span4 item first">
            <div class="item-inner">
                <a class="product-image" title="MA ENZO" href="<?php echo $product['href']; ?>" data-tooltip="sticky-128">
				<img alt="MA ENZO" src="<?php echo $product['thumb'];  ?>"></a>
                    <h2 class="product-name"><a title="MA ENZO" href="">MA ENZO</a></h2>
                    <div class="desc">
                        <?php echo $product['name'];  ?>  </div>
                     <div class="actions">
                        <a rel="tooltip" title="More Details" href="<?php echo $product['href']; ?>" class="more-details">More Details</a>
                        <a onclick="window.open('')" title="View Demo" href="javascript:void(0)" class="view-demo">View Demo</a>
                        
                    </div>
                </div>
            </div>
		<?php 
			if($j%3==0)
			echo '</div>';			
			$i++;
		} ?>	
			         
              
                           


    
    <div class="toolbar-bottom">
        <div class="toolbar">
    <div class="pager">		
        <div class="limiter visible-desktop">
            <label>Show</label>
            
					  <select onchange="location = this.value;">
						<?php foreach ($limits as $limits) { ?>
						<?php if ($limits['value'] == $limit) { ?>
						<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
						<?php } ?>
						<?php } ?>
					  </select>
						per page        
						</div>
        
						<?php echo $pagination; ?>
		
        
    
    
							</div>
						</div>
					</div>
					</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>









<div id="content">


  
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 







<?php echo $footer; ?>