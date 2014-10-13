<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
 <script>
    $(function() {
        for (var i=0; i<5; i++){
        $( "#datepicker_" + i ).datepicker();
         $( "#timepicker_" + i ).timepicker({
                                                    hourGrid: 4,
                                                    minuteGrid: 10
                                            });
       }
       
    });
    
    </script>
<style type="text/css">
	ul.formcreator{
		padding-left:0;
	}
    .formcreator label {
        float: left;
        font-weight: bold;
        padding-right: 14px;
        text-align: left;
        width: 200px;
    }
    .formcreator .title {
        font-weight: bold;
    }
    .formcreator li {
        display: block;
        line-height: 25px;
		list-style:none;
    }
    legend.title {
        font-size: 17px;
        margin: 0 0 5px;
    }
 
    .formh {
        color: #888888;
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 0;
        margin-top: 15px;
    }
    .submit {
        text-align: left;
    }
    .formcreator label span {
        font-weight: bold;
        color: red;
    }
    .formcreator .required {
        color: inherit;
        font-weight: inherit;
    }
    #contact fieldset{ margin-top: 10px; } 
    .formcreator input[type="text"], input[type="password"], textarea {
        width: auto;
		max-width: 100%;
    }

    .formcreator input[type="text"]:focus, input[type="password"]:focus, textarea:focus {
        background-color: #fff;
        border: solid 1px #ccc;
    }
</style>
<div class="box">
<div class="box-heading"><?php echo $heading_title; ?></div>
<div class="box-content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact" class="formcreator">
        <div class="error"><?php echo $error_captcha."<br />".$email; ?></div>

        <?php  
        echo $formdata;  
        ?>
    </form></div></div>
<script type="text/javascript">
$('fieldset').each(function(){
	$(this).find('legend').insertBefore($(this));
	$(this).find('.formcreator').insertBefore($(this));
	$(this).remove();
});
    function checkValidate(){
    $flag = true; 
    jQuery('.required input').each(function(){
    if(jQuery(this).val() === '' ) {
    alert('Please enter ' + jQuery(this).prev().prev().text());
    $flag = false; 
    jQuery(this).focus(); 
    return false; 
               
}
});
var checked = true;
var element = '';
jQuery('.required input[type=checkbox]').each(function(){
	checked = false;
	element = jQuery(this);
    if(jQuery(this).prop('checked')) {
        checked = true;
		return false;
}
});
if(checked==false){
    alert('Please check ' + element.parent().children('label').text());
    $flag = false; 
    element.focus(); 
    return false; 
}
var checked = true;
var element = '';
jQuery('.required input[type=radio]').each(function(){
	checked = false;
	element = jQuery(this);
    if(jQuery(this).prop('checked')) {
        checked = true;
		return false;
}
});
if(checked==false){
    alert('Please check ' + element.parent().children('label').text());
    $flag = false; 
    element.focus(); 
    return false; 
}
var checked = true;
var element = '';
jQuery('.required select[multiple=multiple] option').each(function(){
	checked = false;
	element = jQuery(this);
    if(jQuery(this).prop('selected')) {
        checked = true;
		return false;
}
});
if(checked==false){
    alert('Please select' + element.parent().parent().children('label').text());
    $flag = false; 
    element.focus(); 
    return false; 
}
jQuery('.required textarea').each(function(){
if(jQuery(this).val() === '' ) {
alert('Please enter ' + jQuery(this).prev().prev().text());
$flag = false; 
jQuery(this).focus(); 
return false; 
               
}
});
jQuery('.required select').each(function(){
if(jQuery(this).val() === '' ) {
alert('Please enter ' + jQuery(this).prev().prev().text());
$flag = false; 
jQuery(this).focus(); 
return false; 
               
}
});
  
    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	jQuery('.email  input').each(function(){
 if(!emailReg.test(jQuery(this).val())) {
 $flag = false; 

            alert('Invalid Email ! ');
			jQuery(this).focus();
			return false; 
        }
		
});

// return result
if($flag){
return true; 
}else{
return false; 
}
     
}
</script>