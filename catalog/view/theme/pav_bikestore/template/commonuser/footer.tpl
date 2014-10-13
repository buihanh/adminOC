<?php 


	require_once( DIR_TEMPLATE.$this->config->get('config_template')."/template/libs/module.php" );
	$themeConfig = (array)$this->config->get('themecontrol');
	$themeName =  $this->config->get('config_template');
	$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );
	$LANGUAGE_ID = $this->config->get( 'config_language_id' );  

?>


		</div>
	 <!-- /. PAGE WRAPPER  -->
	</div>
 <!-- /. WRAPPER  -->

 <div class="footer">Copyright Congnghevietuc.com</div>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="catalog/view/theme/<?php echo $themeName;?>/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="catalog/view/theme/<?php echo $themeName;?>/assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->

      
	
	  <!-- DATA TABLE SCRIPTS -->
    <script src="catalog/view/theme/<?php echo $themeName;?>/assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="catalog/view/theme/<?php echo $themeName;?>/assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
	<!-- CUSTOM SCRIPTS -->
    <script src="catalog/view/theme/<?php echo $themeName;?>/assets/js/custom.js"></script>
</body></html>