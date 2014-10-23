
<?php 
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 1.5.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/

require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );

?>
<?php echo $header; ?>



<section id="columns" class="offcanvas-siderbars">
<div class="row visible-xs">
	<div class="offcanvas-sidebars-buttons">
		<button type="button" data-for="column-left" class="pull-left btn btn-danger btn-default" style="display: none;"><i class="fa fa-sort-amount-asc"></i> Sidebar Left</button>
		<button type="button" data-for="column-right" class="pull-right btn btn-danger btn-default" style="display: none;">Sidebar Right <i class="fa fa-sort-amount-desc"></i></button>
	</div>
</div>
<div class="page-heading">
	<h1><?php echo $heading_title; ?></h1>
	 <div class="breadcrumb">
	    <?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
	    <?php if($i!=0) {echo " / ";} ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	    <?php $i++;} ?>
	  </div>
</div>
<div class="container">
	<div class="row">
		<?php if( $SPAN[0] ){ ?>
			<aside class="col-lg-<?php echo $SPAN[0];?> col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
				<?php echo $column_left; ?>
			</aside>
		<?php } ?>
		<section class="col-lg-<?php echo $SPAN[1];?> col-md-<?php echo $SPAN[1];?> col-sm-12 col-xs-12">
			<div id="content">      
				<?php echo $content_top; ?>
				<section id="blog-info" class="pav-blog wrapper blog-wrapper main-column">
					<?php if( $blog['thumb_large'] ) { ?>
					<figure class="image">
						<img class="img-responsive" src="<?php echo $blog['thumb_large'];?>" title="<?php echo $blog['title'];?>"/>
					</figure>
					<section class="content main-column">
						<section class="blog-meta main-column">
							<?php if( $config->get('cat_show_author') ) { ?>
							<span class="author">
								<span>
									<i class="fa fa-pencil"></i>
									<?php echo $this->language->get("text_write_by");?>
								</span>
								<span><?php echo $blog['author'];?></span>
							</span>
							<?php } ?>
							<?php if( $config->get('cat_show_category') ) { ?>
							<span class="publishin">
								<span><i class="fa fa-thumb-tack"></i><?php echo $this->language->get("text_published_in");?></span>
								
								<a class="t-color" href="<?php echo $blog['category_link'];?>" title="<?php echo $blog['category_title'];?>"><?php echo $blog['category_title'];?></a>
							</span>
							<?php } ?>
							
							<?php if( $config->get('cat_show_hits') ) { ?>
							<span class="hits">
								<span><i class="fa fa-insert-template"></i><?php echo $this->language->get("text_hits");?> </span>
								<span class="t-color"><?php echo $blog['hits'];?></span>
							</span>
							<?php } ?>
							<?php if( $config->get('cat_show_comment_counter') ) { ?>
								<span class="comment_count">
									<span>
										<i class="fa fa-comment"></i>
										<?php echo $this->language->get("text_comment_count");?>
									</span>
									<span class="t-color"><?php echo $blog['comment_count'];?></span>
								</span>
							<?php } ?>
						</section><!-- end blog meta -->
						<section class="description main-column">
							<?php echo $description;?>
						</section><!-- end description -->
						<section class="blog-content main-column">
							<div class="content-wrap clearfix">
								<div class="itemFullText">
									<?php echo $content;?>
								</div>
							</div>
							<?php if( $blog['video_code'] ) { ?>
							<div class="pav-video clearfix"><?php echo html_entity_decode($blog['video_code'], ENT_QUOTES, 'UTF-8');?></div>
							<?php } ?>
						</section><!-- end content -->
						<footer>
							<?php if( !empty($tags) ) { ?>
							 <section class="blog-tags">
								<b><?php echo $this->language->get('text_tags');?></b>
								<?php foreach( $tags as $tag => $tagLink ) { ?>
									<a href="<?php echo $tagLink; ?>" title="<?php echo $tag; ?>"><?php echo $tag; ?></a>
								<?php } ?>
							 </section>
							 <?php } ?><!-- end tag -->
							<section class="blog-social clearfix main-column">
								<div class="social-wrap">
									<div class="social-heading"><b><?php echo $this->language->get('text_like_this');?> </b> </div>
									
									<!-- Twitter Button -->
									<div class="itemTwitterButton">
										<a href="https://twitter.com/share" class="twitter-share-button" data-count="horizontal"><?php echo $this->language->get('text_twitter_share'); ?></a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
									</div>
						
									<!-- Facebook Button -->
									<div class="itemFacebookButton">
										<div id="fb-root"></div>
										<script type="text/javascript">
											(function(d, s, id) {
											  var js, fjs = d.getElementsByTagName(s)[0];
											  if (d.getElementById(id)) {return;}
											  js = d.createElement(s); js.id = id;
											  js.src = "//connect.facebook.net/en_US/all.js#appId=177111755694317&xfbml=1";
											  fjs.parentNode.insertBefore(js, fjs);
											}(document, 'script', 'facebook-jssdk'));
										</script>
										<div class="fb-like" data-send="false" data-width="200" data-show-faces="true"></div>
									</div>
									<!-- Google +1 Button -->
									<div class="itemGooglePlusOneButton">	
										<g:plusone annotation="inline" width="120"></g:plusone>
										<script type="text/javascript">
										  (function() {
											window.___gcfg = {lang: 'en'}; // Define button default language here
											var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
											po.src = 'https://apis.google.com/js/plusone.js';
											var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
										  })();
										</script>
									</div>
								</div>	
						 </section><!-- end social -->
						 <section class="blog-bottom row main-column">
								<?php if( !empty($samecategory) ) { ?>
								<div class="col-lg-6 col-sm-6 col-xs-12">
									<h4><?php echo $this->language->get('text_in_same_category');?></h4>
									<ul class="sample-blog-category">
										<?php foreach( $samecategory as $item ) { ?>
										<li><a href="<?php echo $this->url->link('pavblog/blog',"id=".$item['blog_id']);?>"><?php echo $item['title'];?></a></li>
										<?php } ?>
									</ul>
								</div>
								<?php } ?>
								<?php if( !empty($related) ) { ?>
								<div class="col-lg-6 col-sm-6 col-xs-12">
									<h4><?php echo $this->language->get('text_in_related_by_tag');?></h4>
									<ul class="sample-blog-category">
										<?php foreach( $related as $item ) { ?>
										<li><a href="<?php echo $this->url->link('pavblog/blog',"id=".$item['blog_id']);?>"><?php echo $item['title'];?></a></li>
										<?php } ?>
									</ul>
								</div>
								<?php } ?>
						 </section><!-- end bottom -->
						 <section class="pav-comment">
							<?php if( $config->get('blog_show_comment_form') ) { ?>
								<?php if( $config->get('comment_engine') == 'diquis' ) { ?>
							    <div id="disqus_thread"></div>
									<script type="text/javascript">
										/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
										var disqus_shortname = '<?php echo $config->get('diquis_account');?>'; // required: replace example with your forum shortname
				
										/* * * DON'T EDIT BELOW THIS LINE * * */
										(function() {
											var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
											dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
											(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
										})();
									</script>
									<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
									<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
				    
								<?php } elseif( $config->get('comment_engine') == 'facebook' ) { ?>
								<div id="fb-root"></div>
									<script>(function(d, s, id) {
									  var js, fjs = d.getElementsByTagName(s)[0];
									  if (d.getElementById(id)) {return;}
									  js = d.createElement(s); js.id = id;
									  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=<?php echo $config->get("facebook_appid");?>";
									  fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));</script>
									<div class="fb-comments" data-href="<?php echo $link; ?>" 
											data-num-posts="<?php echo $config->get("comment_limit");?>" data-width="<?php echo $config->get("facebook_width")?>">
									</div>
								<?php }else { ?>
									<?php if( count($comments) ) { ?>
									<h4><?php echo $this->language->get('text_list_comments'); ?></h4>
									<div class="pave-listcomments">
										<?php foreach( $comments as $comment ) {  $default='';?>
										<div class="comment-item clearfix" id="comment<?php echo $comment['comment_id'];?>">
											
											<img src="<?php echo "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $comment['email'] ) ) ) . "?d=" . urlencode( $default ) . "&s=60" ?>" align="left"/>
											<div class="comment-wrap">
												<div class="comment-meta">
												<span class="comment-created"><?php echo $this->language->get('text_created');?> <span><?php echo $comment['created'];?></span></span>
												<span class="comment-postedby"><?php echo $this->language->get('text_postedby');?> <span><?php echo $comment['user'];?></span></span>
												<span class="comment-link"><a href="<?php echo $link;?>#comment<?php echo $comment['comment_id'];?>"><?php echo $this->language->get('text_comment_link');?></a></span>
												</div>
												<?php echo $comment['comment'];?>
											</div>
										</div>
										<?php } ?>
										<!--<div class="pagination">
											<?php echo $pagination;?>
										</div>-->
									</div>
									<?php } ?>
									<h4><?php echo $this->language->get("text_leave_a_comment");?></h4>
									<form action="<?php echo $comment_action;?>" method="post" id="comment-form">
										<div class="message" style="display:none"></div>
										<div class="form-group">
											<label for="comment-user"><?php echo $this->language->get('entry_name');?></label>
											<input type="text" name="comment[user]" value="" id="comment-user" class="form-control"/>
										</div>
										<div class="form-group">
											<label for="comment-email"><?php echo $this->language->get('entry_email');?></label>
											<input type="text" name="comment[email]" value="" id="comment-email" class="form-control"/>
										</div>
										<div class="form-group">
											<label for="comment-comment"><?php echo $this->language->get('entry_comment');?></label>
											<textarea name="comment[comment]"  id="comment-comment" class="form-control"></textarea>
										</div>
										<?php if( $config->get('enable_recaptcha') ) { ?>
										<div class="recaptcha form-group">
											 <p><b><?php echo $entry_captcha; ?></b> </p>
											
										  
										    <img src="index.php?route=pavblog/blog/captcha" alt="" aligh="left"/>
										    <input type="text" name="captcha" value="<?php echo $captcha; ?>" size="10" class="form-control" />
										</div>
										<?php } ?>
										<input type="hidden" name="comment[blog_id]" value="<?php echo $blog['blog_id']; ?>" class="form-control" />
										<br/>
										<div class="buttons-wrap right">
											<button class="btn btn-submit btn-default" type="submit">
												<span><?php echo $this->language->get('text_submit');?></span>
											</button>
										</div>
									</form>
									<script type="text/javascript">
										$( "#comment-form .message" ).hide();
										$("#comment-form").submit( function(){
											$.ajax( {type: "POST",url:$("#comment-form").attr("action"),data:$("#comment-form").serialize(), dataType: "json",}).done( function( data ){
												if( data.hasError ){
													$( "#comment-form .message" ).html( data.message ).show();	
												}else {
													location.href='<?php echo str_replace("&amp;","&",$link);?>';
												}
											} );
											return false;
										} );
										
									</script>
								<?php } ?>
							<?php } ?>
						 </section><!-- end comment -->
					 </footer>
					</section><!-- end main content -->
					<?php } ?>
				</section>
				<?php echo $content_bottom; ?>
			</div>
		</section>
		<?php if( $SPAN[2] ){ ?>
			<aside class="col-lg-<?php echo $SPAN[2];?> col-md-<?php echo $SPAN[2];?> col-sm-12 col-xs-12">	
				<?php echo $column_right; ?>
			</aside>
		<?php } ?>
	</div>
</div>
</section>
<?php echo $footer; ?>