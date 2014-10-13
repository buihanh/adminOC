<?php 
class ControllerProductDownload extends Controller { 
	public function index() {
	
		$this->load->model('account/order');
		$this->data['histories'] = array();

		$results = $this->model_account_order->getOrderHistories($this->request->get['order_id']);
		
		if($results==null)
		die();
		
		$order_status_id = $results[count($results)-1]['order_status_id'];
		
		$results_Order = $this->model_account_order->getOrder($this->request->get['order_id']);
		
		

		if ($this->customer->isLogged() && $order_status_id==5 && $results_Order['customer_id'] == $this->customer->isLogged()) {
			$path = $_SERVER['DOCUMENT_ROOT']."/filesoure/"; // change the path to fit your websites document structure
				if(isset($this->request->get['product_id'])){

				$product_file = 	$this->model_account_order->getProducts_My($this->request->get['product_id']);
				
				
				
				$fullPath = $path.$product_file[0]['filesoure'];

				if ($fd = fopen ($fullPath, "r")) {
					$fsize = filesize($fullPath);
					$path_parts = pathinfo($fullPath);
					$ext = strtolower($path_parts["extension"]);
					switch ($ext) {
						case "pdf":
						header("Content-type: application/pdf"); // add here more headers for diff. extensions
						header("Content-Disposition: attachment; filename=\"".$path_parts["basename"]."\""); // use 'attachment' to force a download
						break;
						default;
						header("Content-type: application/octet-stream");
						header("Content-Disposition: filename=\"".$path_parts["basename"]."\"");
					}
					header("Content-length: $fsize");
					header("Cache-control: private"); //use this to open files directly
					while(!feof($fd)) {
						$buffer = fread($fd, 2048);
						echo $buffer;
					}
				}
				fclose ($fd);
				exit;
		}
	}
	else
	{
		$this->redirect($this->url->link('account/download/info', '', 'SSL'));
	}
}
}
?>