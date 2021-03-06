<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">

      <div class="buttons"><a class="btn btn-primary" onclick="$('#form').submit();"><?php echo $button_save; ?></a><a  class="btn btn-primary" href="<?php echo $cancel; ?>" ><?php echo $button_cancel; ?></a></div>

    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">


          <div class="form-group">

              <div class="col-sm-12 col-lg-12 controls">
                  <table cellpadding="10" cellspacing="5" width="100%" id="images" class="list">
                      <thead>
                      <tr>
                          <td class="left">Tiêu đề</td>
                          <td class="left"><?php echo $entry_link; ?></td>
                          <td class="left">Mô tả 1</td>
                          <td class="left">Mô tả 2</td>
                          <td class="left">Mô tả 3</td>
                          <td class="left">Hình ảnh</td>
                          <td></td>
                      </tr>
                      </thead>
                      <?php $image_row = 0; ?>
                      <?php foreach ($banner_images as $banner_image) { ?>
                      <tbody id="image-row<?php echo $image_row; ?>">
                      <tr>
                          <td class="left"><?php foreach ($languages as $language) { ?>
                              <input class="form-control" type="text" name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($banner_image['banner_image_description'][$language['language_id']]) ? $banner_image['banner_image_description'][$language['language_id']]['title'] : ''; ?>" />

                              <?php if (isset($error_banner_image[$image_row][$language['language_id']])) { ?>
                              <span class="error"><?php echo $error_banner_image[$image_row][$language['language_id']]; ?></span>
                              <?php } ?>
                              <?php } ?></td>
                          <td class="left"><input class="form-control" type="text" name="banner_image[<?php echo $image_row; ?>][link]" value="<?php echo $banner_image['link']; ?>" /></td>
                          <td><textarea class="form-control"  name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language['language_id']; ?>][description1]" ><?php echo isset($banner_image['banner_image_description'][$language['language_id']]) ? $banner_image['banner_image_description'][$language['language_id']]['description1'] : ''; ?></textarea></td>
                          <td><textarea class="form-control"  name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language['language_id']; ?>][description2]" ><?php echo isset($banner_image['banner_image_description'][$language['language_id']]) ? $banner_image['banner_image_description'][$language['language_id']]['description2'] : ''; ?></textarea></td>
                          <td><textarea  class="form-control" name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language['language_id']; ?>][description3]" ><?php echo isset($banner_image['banner_image_description'][$language['language_id']]) ? $banner_image['banner_image_description'][$language['language_id']]['description3'] : ''; ?></textarea></td>
                          <td class="left"><div class="image"><img src="<?php echo $banner_image['thumb']; ?>" alt="" id="thumb<?php echo $image_row; ?>" />
                                  <input type="hidden" name="banner_image[<?php echo $image_row; ?>][image]" value="<?php echo $banner_image['image']; ?>" id="image<?php echo $image_row; ?>"  />
                                  <br />
                                  <a onclick="image_upload('image<?php echo $image_row; ?>', 'thumb<?php echo $image_row; ?>');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb<?php echo $image_row; ?>').attr('src', '<?php echo $no_image; ?>'); $('#image<?php echo $image_row; ?>').attr('value', '');"><?php echo $text_clear; ?></a></div></td>
                          <td class="left"><a onclick="$('#image-row<?php echo $image_row; ?>').remove();" class="btn btn-sm btn-danger show-tooltip"><i class="fa fa-trash-o"></i></a></td>
                      </tr>
                      </tbody>
                      <?php $image_row++; ?>
                      <?php } ?>
                      <tfoot>
                      <tr>
                          <td colspan="6"></td>
                          <td class="left"><a onclick="addImage();" class="btn btn-primary">Thêm dòng</a></td>
                      </tr>
                      </tfoot>
                  </table>
              </div>
          </div>

          <div style="opacity: 0; height: 0;width: 0; overflow: hidden">
              <table class="form">
              <tr>
                <td><span class="required">*</span> <?php echo $entry_name; ?></td>
                <td><input class="form-control" type="text" name="name" value="<?php echo $name; ?>" size="100" />
                  <?php if ($error_name) { ?>
                  <span class="error"><?php echo $error_name; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><?php echo $entry_status; ?></td>
                <td><select name="status">
                    <?php if ($status) { ?>
                    <option value="1" selected="selected"><?php echo "Bật"; ?></option>
                    <option value="0"><?php echo "Tắt"; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo "Bật"; ?></option>
                    <option value="0" selected="selected"><?php echo "Tắt"; ?></option>
                    <?php } ?>
                  </select></td>
              </tr>
            </table>
        </div>



      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?>;

function addImage() {
    html  = '<tbody id="image-row' + image_row + '">';
	html += '<tr>';
    html += '<td class="left">';
	<?php foreach ($languages as $language) { ?>
	html += '<input  class="form-control" type="text" name="banner_image[' + image_row + '][banner_image_description][<?php echo $language['language_id']; ?>][title]" value="" />';
    <?php } ?>
	html += '</td>';	
	html += '<td class="left"><input class="form-control" type="text" name="banner_image[' + image_row + '][link]" value="" /></td>';
	html += '<td class="left"><div class="image"><img src="<?php echo $no_image; ?>" alt="" id="thumb' + image_row + '" /><input type="hidden" name="banner_image[' + image_row + '][image]" value="" id="image' + image_row + '" /><br /><a onclick="image_upload(\'image' + image_row + '\', \'thumb' + image_row + '\');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$(\'#thumb' + image_row + '\').attr(\'src\', \'<?php echo $no_image; ?>\'); $(\'#image' + image_row + '\').attr(\'value\', \'\');"><?php echo $text_clear; ?></a></div></td>';
	html += '<td class="left"><a onclick="$(\'#image-row' + image_row  + '\').remove();" class="btn btn-sm btn-danger show-tooltip"><i class="fa fa-trash-o"></i></a></td>';
	html += '</tr>';
	html += '</tbody>'; 
	
	$('#images tfoot').before(html);
	image_row++;
}
//--></script>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<?php echo $footer; ?>