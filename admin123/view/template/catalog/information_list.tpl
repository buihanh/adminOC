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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
  
  
  <div class="btn-toolbar pull-right">
	  <div class="btn-group">
		  <a href="<?php echo $insert; ?>" title="Thêm danh mục mới" class="btn btn-circle show-tooltip" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
		  <a href="#" onclick="$('#form').submit();" title="Xóa danh mục" class="btn btn-circle show-tooltip" data-original-title="Delete selected"><i class="fa fa-trash-o"></i></a>
	  </div>
  </div>
  <br><br>

    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
		  <div class="table-responsive">
			<table class="table table-advance">
				<thead>
					<th><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></th>
					<th>
						<?php if ($sort == 'id.title') { ?>
							<a href="<?php echo $sort_title; ?>" class="<?php echo strtolower($order); ?>">Tiêu đề</a>
						<?php } else { ?>
							<a href="<?php echo $sort_title; ?>">Tiều đề</a>
						<?php } ?>
					</th>
					<th>
						<?php if ($sort == 'i.sort_order') { ?>
							<a href="<?php echo $sort_sort_order; ?>" class="<?php echo strtolower($order); ?>">Tứ tự</a>
						<?php } else { ?>
							<a href="<?php echo $sort_sort_order; ?>">Thứ tự</a>
						<?php } ?>
					</th>
					<th style="width:100px">Chức năng</th>
					
				</thead>
				<tbody>
					 <?php if ($informations) { ?>
					<?php foreach ($informations as $information) { ?>
					<tr class="delete_<?php echo $information['information_id']; ?>">
					  <td><?php if ($information['selected']) { ?>
						<input type="checkbox" name="selected[]" value="<?php echo $information['information_id']; ?>" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="selected[]" value="<?php echo $information['information_id']; ?>" />
						<?php } ?></td>
					  <td class="left"><?php echo $information['title']; ?></td>
					  <td class="right"><?php echo $information['sort_order']; ?></td>
					  <td class="visible-md visible-lg">
						  <div class="btn-group">
							  <a data-original-title="Sửa" class="btn btn-sm show-tooltip" title="" href="<?php echo $information['href'];  ?>"><i class="fa fa-edit"></i></a>
							  <a data-original-title="Xóa" class="btn btn-sm btn-danger show-tooltip" title="" onclick="fcdelete(<?php echo $information['information_id']; ?>)" href="javascript:void(0);"><i class="fa fa-trash-o"></i></a>
						  </div>
					  </td>
					</tr>
					<?php } ?>
					<?php } else { ?>
					<tr>
					  <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	  
      
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>

<script type="application/javascript">
    function fcdelete(id){
        var r=confirm("Bạn có chắc không?");
        if (r==false)
        {
            return false;
        }
        var url = $('base').attr('href') + 'index.php?route=catalog/information/fcdelete&token=<?php echo $this->session->data["token"]; ?>';
        $.ajax({

            type: "post",

            url : url,

            data:{'information_id':id},

            dataType : "html",

            success : function(response){

                if(response!="")
                {
                    $('.delete_'+id).css( "display", "none" );
                }

            }
        });

    }
</script>




<?php echo $footer; ?>