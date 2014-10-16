<?php echo $header; ?>
    <!-- BEGIN Breadcrumb -->
    <div id="breadcrumbs">
        <ul class="breadcrumb">
            <li class="active"><i class="fa fa-home"></i> Home</li>
        </ul>
    </div>
    <!-- END Breadcrumb -->
    <div class="row clrow">
        <div class="col-md-7">
            <div class="row">
                <div class="col-md-7">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="tile">
                                <p class="title">Tổng doanh thu: <?php echo $total_sale; ?></p>
                                <p class="title">Tổng doanh thu trong năm: <?php echo $total_sale_year; ?></p>
                                <div class="img img-bottom">
                                    <i class="fa fa-desktop"></i>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-12 tile-active">
                            <div class="tile tile-magenta" style="top: 0px;">
                                <div class="img img-center">
                                    <i class="fa fa-desktop"></i>
                                </div>
                                <p class="title text-center">Chờ duyệt
                                    <?php echo $total_customer_approval; ?></p>
                            </div>

                            <div class="tile tile-blue" style="top: 0px;">
                                <p class="title">Chờ phê duyệt đánh giá: <?php echo $total_review_approval; ?></p>
                                 <div class="img img-bottom">
                                    <i class="fa fa-desktop"></i>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <div class="col-md-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="tile tile-orange">
                        <div class="img">
                            <i class="fa fa-comments"></i>
                        </div>
                        <div class="content">
                            <p class="big"><?php echo $total_order; ?></p>
                            <p class="title">Đơn đặt hàng</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="tile tile-dark-blue">
                        <div class="img">
                            <i class="fa fa-download"></i>
                        </div>
                        <div class="content">
                            <p class="big"><?php echo $total_customer; ?></p>
                            <p class="title">Số khách hàng </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>






<div class="statistic">
    <div class="range"><div class="dashboard-heading">Thống kê </div>
        <select id="range" onchange="getSalesChart(this.value)">
            <option value="day"><?php echo $text_day; ?></option>
            <option value="week"><?php echo $text_week; ?></option>
            <option value="month"><?php echo $text_month; ?></option>
            <option value="year"><?php echo $text_year; ?></option>
        </select>
    </div>

    <div class="dashboard-content">
        <div id="report" style="width: 90%; height: 170px; margin: auto;"></div>
    </div>
</div>
<div class="latest">
    <div class="dashboard-headings">10 Đơn đặt hàng mới nhất</div>

    <div class="table-responsive">
        <table class="table table-advance">
            <thead>
                <th class="right">ID</th>
                <th>Khách hàng</th>
                <th>Trạng thái</th>
                <th>Ngày mua</th>
                <th class="right">Tổng tiền</th>
                <th></th>
            </thead>
            <tbody>
            <?php if ($orders) { ?>
                <?php foreach ($orders as $order) { ?>
                <tr>
                    <td class="right"><?php echo $order['order_id']; ?></td>
                    <td class="left"><?php echo $order['customer']; ?></td>
                    <td class="left"><?php echo $order['status']; ?></td>
                    <td class="left"><?php echo $order['date_added']; ?></td>
                    <td class="right"><?php echo $order['total']; ?></td>
                    <td class="right"><?php foreach ($order['action'] as $action) { ?>
                         <a class="btn btn-sm show-tooltip" href="<?php echo $action['href']; ?>"><i class="fa fa-file-o"></i></a>
                        <?php } ?></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                    <td class="center" colspan="6"><?php echo $text_no_results; ?></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>


</div>
<!--[if IE]>
<script type="text/javascript" src="view/javascript/jquery/flot/excanvas.js"></script>
<![endif]-->
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.js"></script>
<script type="text/javascript"><!--
    function getSalesChart(range) {
        $.ajax({
            type: 'get',
            url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
            dataType: 'json',
            async: false,
            success: function(json) {
                var option = {
                    shadowSize: 0,
                    lines: {
                        show: true,
                        fill: true,
                        lineWidth: 1
                    },
                    grid: {
                        backgroundColor: '#FFFFFF'
                    },
                    xaxis: {
                        ticks: json.xaxis
                    }
                }

                $.plot($('#report'), [json.order, json.customer], option);
            }
        });
    }

    getSalesChart($('#range').val());
    //--></script>

<?php echo $footer; ?>