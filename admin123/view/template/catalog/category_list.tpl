<?php echo $header; ?>
<div id="content" xmlns="http://www.w3.org/1999/html">
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

  <div class="box-content">
  <div class="btn-toolbar pull-right">
      <div class="btn-group">
          <a href="<?php echo $insert; ?>" title="Thêm danh mục mới" class="btn btn-circle show-tooltip" data-original-title="Add new record"><i class="fa fa-plus"></i></a>
          <a href="#" onclick="$('#form').submit();" title="Xóa danh mục" class="btn btn-circle show-tooltip" data-original-title="Delete selected"><i class="fa fa-trash-o"></i></a>
      </div>

      <div class="btn-group">
          <a href="<?php echo $repair; ?>" title="Làm mới" class="btn btn-circle show-tooltip" data-original-title="Refresh"><i class="fa fa-repeat"></i></a>
      </div>
  </div>
  <br><br>
  
  
  
  <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
  <div class="table-responsive">
      <table class="table table-advance">
          <thead>
          <tr>
              <th style="width:18px"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></th>
              <th>Tên danh mục</th>
              <th>Thứ tự</th>
              <th style="width:130px" class="visible-md visible-lg">Chức năng</th>
          </tr>
          </thead>
          <tbody>
          <?php if ($categories) { ?>
          <?php foreach ($categories as $category) { ?>
              <tr  class="delete_<?php echo $category['category_id']; ?> ">
                  <td style="text-align: center;"><?php if ($category['selected']) { ?>
                      <input type="checkbox" name="selected[]" value="<?php echo $category['category_id']; ?>" checked="checked" />
                      <?php } else { ?>
                      <input type="checkbox" name="selected[]" value="<?php echo $category['category_id']; ?>" />
                      <?php } ?></td>

                  <td><?php echo $category['name']; ?></td>

                  <td  class="text-center"><?php echo $category['sort_order']; ?></td>


                  <td class="visible-md visible-lg">
                      <div class="btn-group">
                          <a href="<?php echo $category['href']; ?>" title="" class="btn btn-sm show-tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                          <a href="#" onclick="fcdelete(<?php echo $category['category_id'];  ?>)" title="" class="btn btn-sm btn-danger show-tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                      </div>
                  </td>
              </tr>
           <?php } ?>
          <?php } ?>
          </tbody>
      </table>
  </div>
  </form>


  <div class="text-center">
      <?php echo $pagination; ?>
  </div>
  </div>
<script type="application/javascript">
    function fcdelete(id){
        var r=confirm("Bạn có chắc không?");
        if (r==false)
        {
            return false;
        }
        var url = $('base').attr('href') + 'index.php?route=catalog/category/fcdelete&token=<?php echo $this->session->data["token"]; ?>';
        $.ajax({

            type: "post",

            url : url,

            data:{'category_id':id},

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