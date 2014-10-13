<?php 
class ControllerProductDemo extends Controller { 
	public function index() {
		
	
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		
		if ($this->config->get('config_logo') && file_exists(DIR_IMAGE . $this->config->get('config_logo'))) {
			$this->data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$this->data['logo'] = '';
		}
		
		$this->data['base'] = $server;
		
		if (isset($this->request->get['product_id'])) {
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		}
		$this->load->model('catalog/product');

		$product_info = $this->model_catalog_product->getProduct($product_id);

        /*echo "<pre>";
        print_r($product_info);
        die();
        */
		if ($product_info) {
			$this->data['title'] = ($product_info['name']);
			$this->data['description'] = ($product_info['meta_description']);
			$this->data['keywords'] = ($product_info['meta_keyword']);
			$this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
            $this->data['href_view_demo']=   $product_info['viewdemo'];
		}

		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/demo.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/demo.tpl';
		} else {
			$this->template = 'default/template/demo/demo.tpl';
		}

		/* $this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'		
		); */

		$this->response->setOutput($this->render());
	}
	public function search() {
		
		$search = $this->request->post['search'];
	
		$this->load->model('catalog/product');
		$data = array(
				'filter_name'         => $search, 
				'filter_tag'          => '', 
				'filter_description'  => '',
				'filter_category_id'  => '', 
				'filter_sub_category' => '', 
				'sort'                => '',
				'order'               => 'date_added',
				'start'               => 0,
				'limit'               => 100
			);


		$results = $this->model_catalog_product->getProducts($data);
		$arr = array();
		foreach ($results as $result) {
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
			$arr[] = array(
				'name'			=>$result['name'],
				'price'			=>$price,
				'href'        	=> $this->url->link('product/demo', 'product_id=' . $result['product_id'])
			);
		}
		
		echo json_encode($arr) ;
		exit();
	}
	
}
?>