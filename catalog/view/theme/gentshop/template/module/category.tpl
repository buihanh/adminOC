<div class="auto-scroll box category highlights">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content   tree-menu">
    <ul id="cat-accordion" class="panel-group box-category box-panel js-hover">
      <?php foreach ($categories as $category) { ?>
      <li class="<?php if ($category['children']) {echo "haschild";} ?>">
        <?php if ($category['category_id'] == $category_id) { ?>
        <a data-id="<?php echo $category['category_id'];?>" class="item" href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) {?>
        <span class="head">
			<a href="#collapseOne<?php echo $category['category_id'];?>" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#cat-accordion">
			<i class="icon-collapse collapse-<?php echo $category['category_id'];?>"></i></a>
		</span>
		<?php }?>
        <?php } else { ?>
        <a data-id="<?php echo $category['category_id'];?>" class="item" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) {?>
        <span class="head">
			<a href="#collapseOne<?php echo $category['category_id'];?>" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#cat-accordion">
			<i class="icon-collapse collapse-<?php echo $category['category_id'];?>"></i></a>
		</span>
		<?php }?>
        <?php } ?>
        <?php if ($category['children']) { ?>
        <ul id="collapseOne<?php echo $category['category_id'];?>" class="collapse" style="height: 0">
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<script>
	$(document).on('click', '#cat-accordion .accordion-toggle', function(event) {
        event.stopPropagation();
        var $this = $(this);
        var parent = $this.data('parent');
        var actives = parent && $(parent).find('.collapse.in');
        var target = $this.attr('data-target') || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, ''); 
        if (actives && actives.length) {
            actives.collapse('hide');
            $(parent).find('.accordion-toggle').not($(event.target)).addClass('collapsed');
   		}
        $(this).removeClass('collapsed');
        $(target).collapse('show');
        $(target).addClass('collapse','1000');
        $(target).css('height','auto');
        $(target).animate({height:"auto"});
});
</script>