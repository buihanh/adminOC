<div class="mini-cart" id="cart" >
    <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle">
        <a><span id="cart-total"><?php echo $text_items; ?></span></a>
    </div>
    <div>
        <div class="top-cart-content  arrow_box" style="display: none;">
            <div class="block-subtitle">
                Recently added item(s)</div>
			 <?php if ($products || $vouchers) { ?>
            <ul class="mini-products-list" id="cart-sidebar">			 
				 <?php foreach ($products as $product) { ?>
					<li class="item  first">
						<div class="item-inner">
							
								<?php if ($product['thumb']) { ?>
								<a class="product-image" href="<?php echo $product['href']; ?>"><img width="55" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
								<?php } ?>
							<div class="product-details">
								<p class="product-name">
									<a href="<?php echo $product['href']; ?>">
										<?php echo $product['name']; ?></a>
										<div>
										  <?php foreach ($product['option'] as $option) { ?>
										  - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
										  <?php } ?>
										</div>
										</p>
								<div class="access">
									<a class="btn-remove1" onclick="return confirm('Are you sure you would like to remove this item from the shopping cart?');"
										title="Remove This Item" href="http://demo.magikthemes.com/index.php/astrademo1/checkout/cart/delete/id/7813/uenc/aHR0cDovL2RlbW8ubWFnaWt0aGVtZXMuY29tL2luZGV4LnBocC9hc3RyYWRlbW8xL2NoZWNrb3V0L2NhcnQv/">
										<span class="icon"></span>Remove</a> <a class="btn-edit" title="Edit item" href="http://demo.magikthemes.com/index.php/astrademo1/checkout/cart/configure/id/7813/">
											<span class="icon"></span>Edit item</a>
								</div>
								<!--access-->
								
								<strong><?php echo $product['quantity']; ?></strong> x <span class="price"><?php echo $product['total']; ?></span>
							</div>
						</div>
					</li>
				<?php } ?>
				<?php if($vouchers){ ?>
					<li>
					 <table>
					  <?php foreach ($vouchers as $voucher) { ?>
						<tr>
						  <td class="image"></td>
						  <td class="name"><?php echo $voucher['description']; ?></td>
						  <td class="quantity">x&nbsp;1</td>
						  <td class="total"><?php echo $voucher['amount']; ?></td>
						  <td class="remove"><img src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&amp;remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&amp;remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" /></td>
						</tr>
						<?php } ?>
					  </table>
					</li>
				<?php } ?>
            </ul>
			
			
			 <div class="top-subtotal">
				<div class="mini-cart-total">				
					<?php foreach ($totals as $total) { ?>
					   <?php echo $total['title']; ?>: <span class="price"></span><span class="price"><span class="price"><?php echo $total['text']; ?></span></span><br/>
					<?php } ?>				  
				</div>             
            </div>
            <!--prices-wrap-->
            <div class="actions">
                <button title="View Cart" onclick="window.location='<?php echo $cart; ?>';"
                    class="view-cart" type="button">
                    <span><?php echo $text_cart; ?></span></button>
                <button onclick="window.location='<?php echo $checkout; ?>';"
                    class="btn-checkout" title="Checkout" type="button">
                    <span><?php echo $text_checkout; ?></span></button>
            </div>
            <!--actions-->
			<?php } else { ?>
				<div class="empty"><?php echo $text_empty; ?></div>
			<?php } ?>
           
        </div>
        <!--top-cart-content-->
    </div>
</div>
