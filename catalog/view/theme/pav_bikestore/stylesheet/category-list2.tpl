<ul class="product_list grid row">
	{foreach from=$categorys item=category1 name=categorys}	
		{if $category1.name }	
			{if count($category1.prod)>0 }
			<li  class=" col-xs-12 col-sm-12 col-md-12" style="clear:both; width:100%"><div  style="color:#000;  font-family: acaslonpro;  font-size:19px; text-transform: capitalize;" >{$category1.name}</div></li>
			{/if}
			<li class="ajax_block_product col-xs-12 col-sm-6 col-md-4" >
					<div class="product-container" itemscope itemtype="http://schema.org/Product">
							<div class="left-block">
								<div class="product-image-container1">
									<a href="{$link->getCategoryLink($category1.id_category, $category1.link_rewrite)|escape:'html':'UTF-8'}" title="{$category1.name|escape:'html':'UTF-8'}" class="img">
										
										<img class="replace-2x" src="{$link->getCatImageLink($category1.link_rewrite, $category1.id_image, 'medium_default')|escape:'html':'UTF-8'}" alt=""  height="{$mediumSize.height}" />
									</a>
									<div class="clr"></div>
								</div>
							</div>
							<div class="right-block">
								<h5 itemprop="name">
									
									<a class="product-name" href="{$link->getCategoryLink($category1.id_category, $category1.link_rewrite)|escape:'html':'UTF-8'}" title="{$category1.name|escape:'html':'UTF-8'}" itemprop="url" >
									
										{$category1.name}
									</a>
								</h5>
								
							</div>
							
						</div><!-- .product-container> -->
					</li>
			
			
		{/if}
		
		{if $category1.prod!=null}
			<li style="clear:both; width:100%"></li>
		{/if}
		
		
	{/foreach}
</ul>
