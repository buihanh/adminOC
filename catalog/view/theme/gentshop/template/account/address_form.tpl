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
				<div clas="wrapper no-margin">
					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					    <h2><?php echo $text_edit_address; ?></h2>
					    <div class="content">
					      <table class="form">
					        <tr>
					          <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
					          <td><input class="form-control" type="text" name="firstname" value="<?php echo $firstname; ?>" />
					            <?php if ($error_firstname) { ?>
					            <span class="error"><?php echo $error_firstname; ?></span>
					            <?php } ?></td>
					        </tr>
					        <tr>
					          <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
					          <td><input class="form-control" type="text" name="lastname" value="<?php echo $lastname; ?>" />
					            <?php if ($error_lastname) { ?>
					            <span class="error"><?php echo $error_lastname; ?></span>
					            <?php } ?></td>
					        </tr>
					        <tr>
					          <td><?php echo $entry_company; ?></td>
					          <td><input class="form-control" type="text" name="company" value="<?php echo $company; ?>" /></td>
					        </tr>
					        <?php if ($company_id_display) { ?>
					        <tr>
					          <td><?php echo $entry_company_id; ?></td>
					          <td><input class="form-control" type="text" name="company_id" value="<?php echo $company_id; ?>" />
					            <?php if ($error_company_id) { ?>
					            <span class="error"><?php echo $error_company_id; ?></span>
					            <?php } ?></td>
					        </tr>
					        <?php } ?>
					        <?php if ($tax_id_display) { ?>
					        <tr>
					          <td><?php echo $entry_tax_id; ?></td>
					          <td><input class="form-control" type="text" name="tax_id" value="<?php echo $tax_id; ?>" />
					            <?php if ($error_tax_id) { ?>
					            <span class="error"><?php echo $error_tax_id; ?></span>
					            <?php } ?></td>
					        </tr>
					        <?php } ?>
					        <tr>
					          <td><span class="required">*</span> <?php echo $entry_address_1; ?></td>
					          <td><input class="form-control" type="text" name="address_1" value="<?php echo $address_1; ?>" />
					            <?php if ($error_address_1) { ?>
					            <span class="error"><?php echo $error_address_1; ?></span>
					            <?php } ?></td>
					        </tr>
					        <tr>
					          <td><?php echo $entry_address_2; ?></td>
					          <td><input class="form-control" type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
					        </tr>
					        <tr>
					          <td><span class="required">*</span> <?php echo $entry_city; ?></td>
					          <td><input class="form-control" type="text" name="city" value="<?php echo $city; ?>" />
					            <?php if ($error_city) { ?>
					            <span class="error"><?php echo $error_city; ?></span>
					            <?php } ?></td>
					        </tr>
					        <tr>
					          <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
					          <td><input class="form-control" type="text" name="postcode" value="<?php echo $postcode; ?>" />
					            <?php if ($error_postcode) { ?>
					            <span class="error"><?php echo $error_postcode; ?></span>
					            <?php } ?></td>
					        </tr>
					        <tr>
					          <td><span class="required">*</span> <?php echo $entry_country; ?></td>
					          <td><select class="form-control" name="country_id">
					              <option value=""><?php echo $text_select; ?></option>
					              <?php foreach ($countries as $country) { ?>
					              <?php if ($country['country_id'] == $country_id) { ?>
					              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
					              <?php } else { ?>
					              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
					              <?php } ?>
					              <?php } ?>
					            </select>
					            <?php if ($error_country) { ?>
					            <span class="error"><?php echo $error_country; ?></span>
					            <?php } ?></td>
					        </tr>
					        <tr>
					          <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
					          <td><select class="form-control" name="zone_id">
					            </select>
					            <?php if ($error_zone) { ?>
					            <span class="error"><?php echo $error_zone; ?></span>
					            <?php } ?></td>
					        </tr>
					        <tr>
					          <td><?php echo $entry_default; ?></td>
					          <td><?php if ($default) { ?>
					            <input type="radio" name="default" value="1" checked="checked" />
					            <?php echo $text_yes; ?>
					            <input type="radio" name="default" value="0" />
					            <?php echo $text_no; ?>
					            <?php } else { ?>
					            <input type="radio" name="default" value="1" />
					            <?php echo $text_yes; ?>
					            <input type="radio" name="default" value="0" checked="checked" />
					            <?php echo $text_no; ?>
					            <?php } ?></td>
					        </tr>
					      </table>
					    </div>
					    <div class="buttons">
					      <div class="left"><a href="<?php echo $back; ?>" class="button btn btn-outline"><?php echo $button_back; ?></a></div>
					      <div class="right">
					        <input type="submit" value="<?php echo $button_continue; ?>" class="button btn btn-outline" />
					      </div>
					    </div>
					  </form>
				</div>
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
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/address/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},		
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script> 
<?php echo $footer; ?>