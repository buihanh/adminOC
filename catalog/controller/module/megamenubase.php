<?php

class ControllerModuleMegamenubase extends Controller {

	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('catalog/product'); 
		$this->load->model('tool/image');
		$this->load->model( 'menu/megamenu' );
		
		$this->language->load('module/megamenubase');
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		$this->data['base'] = $server;
		
		$this->data['button_cart'] = $this->language->get('button_cart');
	
		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/css/fhmm.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/css/fhmm.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/fhmm.css');
		}
		
		/* check bootstrap 3 framwework existed or not. this modules is main support for  themes for  ' */
		if ( !file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/javascript/fhmm.js') ) {
			$this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/javascript/fhmm.js');
		}else{
			$this->document->addScript('catalog/view/javascript/fhmm.js');
		}
		

		$this->data['module'] = $module++;
		$params = $this->config->get( 'params' );
	 	
		$this->load->model('setting/setting');
		$params = $this->model_setting_setting->getSetting( 'megamenubase_params' );
		if( isset($params['params']) && !empty($params['params']) ){
	 		$params = json_decode( $params['params'] );
	 	}
		$this->data['contact'] = $this->url->link('information/contact');
		//get store
		$store_id = $this->config->get('config_store_id');
		$this->data['store_id'] = $store_id;
		$parent = '1';		
		$this->load->model( 'menu/widget' );
		$this->load->model('tool/image');
		$string  = '';
		$array = $this->model_menu_megamenu->getChilds(1);	 
		
		/* echo "<pre>";
		print_r($array);
		die(); 
		 */
		
		$arr = array();
		
		
		foreach($array as $row)
		{
			
			$array_sub = $this->model_menu_megamenu->getChilds($row['megamenu_id']);
			/* 
			 echo "<pre>";
			print_r($array_sub);
			die();  */
		
			$artemp = array();	
			$arr_image = array();	
			
			foreach($array_sub as $row1)
			{			
				$array_sub1 = $this->model_menu_megamenu->getChilds($row1['megamenu_id']);
				
				$arrtemp1 = array();
				foreach($array_sub1 as $row2)
				{
					$arrtemp1[] = array(
						'title'=> $row2['title'],
						'description' =>$row2['description'],
						'href'=>$this->getLink($row2['item'],$row2['type'],$row2['url'])
						
					);
				}
				
				if($row['type_submenu']==1)
				$image = $this->model_tool_image->resize($row1['image'],265, 120);
				elseif($row['type_submenu']==2)
				$image = $this->model_tool_image->resize($row1['image'],200, 100);
				elseif($row['type_submenu']==5)
				$image = $this->model_tool_image->resize($row1['image'],268, 130);
				 else
				$image = $this->model_tool_image->resize($row1['image'],200, 200);
				
				if($row1['image']!='')
				{
					$arr_image[] = array(
						'image' => $image,
						'href'=>$this->getLink($row1['item'],$row1['type'],$row1['url']),
						'description' =>$row1['description']
					);
				}
				$artemp[] = array(
					'title'=> $row1['title'],
					'href'=>$this->getLink($row1['item'],$row1['type'],$row1['url']),
					'image' => $image,
					'description' =>$row1['description'],
					'submenu_sub' => $arrtemp1
				);
			}
			$this->load->model('catalog/product');
			$product_info = $this->model_catalog_product->getProduct($row['menu_class']);	
			
			if($product_info!=null)
			{
				$product= array(
					'product_id' =>$product_info['product_id'],
					'name' =>$product_info['name'],
					'href'=>$this->url->link('product/product','&product_id=' . $product_info['product_id']),
					'image' => $this->model_tool_image->resize($product_info['image'],150, 150),
					'price'=>$this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))
				);
			}
			else
			$product = null;
			
			
			
			$arr[] = array(
				'title'=> $row['title'],
				'submenu_colum_width' =>$row['submenu_colum_width'],
				'item' =>$row['item'],
				'colums' =>$row['colums'],
				'type' =>$row['type'],
				'description' =>$row['description'],		
				'url' =>$row['url'],
				'href'=>$this->getLink($row['item'],$row['type'],$row['url']),
				'type_submenu'=>$row['type_submenu'],
				'submenu' => $artemp,
				'image' =>$this->model_tool_image->resize($row['image'],412, 254),
				'arr_image' => $arr_image,
				'product'=>$product
				
			);
		
		}
		$this->data['menus'] = $arr;		
	
		
		
	 		 
		/*  
	 	echo "<pre>";		
		print_r($arr);
		die();  */    
	
		$this->load->model('catalog/information');
		$this->data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if (!$result['bottom']) {
				$this->data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}
	
	
	
	
	
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/megamenubase.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/megamenubase.tpl';
		} else {
			$this->template = 'default/template/module/megamenubase.tpl';
		}
	
		$this->render();
	}
	
	
	public function getLink( $id ,$type,$url ){
	
		switch( $type ){
			case 'category'     :
				return $this->url->link('product/category', 'path=' . $id );
				break;
			case 'product'      :
				return  $this->url->link('product/product', 'product_id=' . $id);
				break;
			case 'information'  :
		
				return   $this->url->link('information/information', 'information_id=' . $id);
				break;
			case 'manufacturer' :;
				return  $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $id);
				break;
			case 'blog' :;
				return  $this->url->link('blog/category', 'id=' . $id);
				break;
			case 'url' :;
				return  $url;
				break;
			default: 
				return $url;
		}
	}
	public function ajxgenmenu( ){ 
 	 	
	}

	public function renderwidget(){
		if( isset($this->request->post['widgets']) ){
			$this->load->model( 'menu/widget' );
			
			$widgets = $this->request->post['widgets'];
			$widgets = explode( '|wid-', '|'.$widgets );
			if( !empty($widgets) ){
				unset( $widgets[0] );
				$this->model_menu_widget->loadWidgets();
				$output = '';
				foreach( $widgets as $wid ){
					$output .= $this->model_menu_widget->renderContent( $wid );
				}

				echo $output;
			}
		 
		}
		exit();
	}
	
}
?>