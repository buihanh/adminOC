<?php 
class ControllerAccountProduct extends Controller {


 
	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/account', '', 'SSL');

			$this->redirect($this->url->link('account/login', '', 'SSL'));
		}

        $this->load->model('tool/image');
        $this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);

		$this->language->load('account/account');

		$this->document->setTitle("Add Product");

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => "Product",
			'href'      => $this->url->link('account/product', '', 'SSL'),
			'separator' => $this->language->get('text_separator')
		);

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['heading_title'] = "Product";

		$this->data['text_my_account'] = $this->language->get('text_my_account');
		$this->data['text_my_orders'] = $this->language->get('text_my_orders');
		$this->data['text_my_newsletter'] = $this->language->get('text_my_newsletter');
		$this->data['text_edit'] = $this->language->get('text_edit');
		$this->data['text_password'] = $this->language->get('text_password');
		$this->data['text_address'] = $this->language->get('text_address');
		$this->data['text_wishlist'] = $this->language->get('text_wishlist');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_download'] = $this->language->get('text_download');
		$this->data['text_reward'] = $this->language->get('text_reward');
		$this->data['text_return'] = $this->language->get('text_return');
		$this->data['text_transaction'] = $this->language->get('text_transaction');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');
		$this->data['text_recurring'] = $this->language->get('text_recurring');

		$this->data['edit'] = $this->url->link('account/edit', '', 'SSL');
		$this->data['password'] = $this->url->link('account/password', '', 'SSL');
		$this->data['address'] = $this->url->link('account/address', '', 'SSL');
		$this->data['wishlist'] = $this->url->link('account/wishlist');
		$this->data['order'] = $this->url->link('account/order', '', 'SSL');
		$this->data['download'] = $this->url->link('account/download', '', 'SSL');
		$this->data['return'] = $this->url->link('account/return', '', 'SSL');
		$this->data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');
		$this->data['recurring'] = $this->url->link('account/recurring', '', 'SSL');
		$this->data['username'] = $this->customer->getFirstName();




        /*
         * Get product user
         */

         $this->load->model('catalog/product');
         $ProductUser =  $this->model_catalog_product->getProductUser($this->customer->isLogged());
        foreach ($categories as $category) {
            

        }

        echo "<pre>";
        print_r($ProductUser);
        die();

        $this->data['categories'] = array();
        $this->load->model('catalog/category');
        $categories = $this->model_catalog_category->getCategories(0);

        foreach ($categories as $category) {

                // Level 2
                $children_data = array();

                $children = $this->model_catalog_category->getCategories($category['category_id']);

                foreach ($children as $child) {
                    $data = array(
                        'filter_category_id'  => $child['category_id'],
                        'filter_sub_category' => true
                    );



                    $children_data[] = array(
                        'category_id'  => $child['category_id'],
                        'name'  => $child['name'],
                        'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
                    );
                }

                // Level 1
                $this->data['categories'][] = array(
                    'name'     => $category['name'],
                    'category_id'     => $category['category_id'],
                    'children' => $children_data,
                    'column'   => $category['column'] ? $category['column'] : 1,
                    'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
                );

        }



        if ($this->config->get('reward_status')) {
			$this->data['reward'] = $this->url->link('account/reward', '', 'SSL');
		} else {
			$this->data['reward'] = '';
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/listproduct.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/listproduct.tpl';
		} else {
			$this->template = 'default/template/account/listproduct.tpl';
		}

		$this->children = array(
			'commonuser/column_left',
			'commonuser/column_right',
			'commonuser/content_top',
			'commonuser/content_bottom',
			'commonuser/footer',
			'commonuser/header'
		);

		$this->response->setOutput($this->render());
	}
    /*
     * delete product my
     */
    public function delete() {
        if (!$this->customer->isLogged()) {
           die();
        }
        $product_id =   $this->request->post['product_id'];
        $this->load->model('catalog/product');

        $this->model_catalog_product->deleteProduct($product_id);

        echo "ok";
        exit();

    }
	
	public function add() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/account', '', 'SSL');

			$this->redirect($this->url->link('account/login', '', 'SSL'));
		}

        $this->load->model('tool/image');
        $this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);

		$this->language->load('account/account');

		$this->document->setTitle("Add Product");

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => "Product",
			'href'      => $this->url->link('account/product', '', 'SSL'),
			'separator' => $this->language->get('text_separator')
		);
		$this->data['breadcrumbs'][] = array(
			'text'      => "Add Product ",
			'href'      => $this->url->link('account/product/add', '', 'SSL'),
			'separator' => $this->language->get('text_separator')
		);
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['heading_title'] = "Add Product";
		$this->data['username'] = $this->customer->getFirstName();

        /*
         * Array category--------------------
         */
        $this->data['categories'] = array();
        $this->load->model('catalog/category');
        $categories = $this->model_catalog_category->getCategories(0);

        foreach ($categories as $category) {

                // Level 2
                $children_data = array();

                $children = $this->model_catalog_category->getCategories($category['category_id']);

                foreach ($children as $child) {
                    $data = array(
                        'filter_category_id'  => $child['category_id'],
                        'filter_sub_category' => true
                    );
                    $children_data[] = array(
                        'category_id'  => $child['category_id'],
                        'name'  => $child['name'],
                        'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
                    );
                }

                // Level 1
                $this->data['categories'][] = array(
                    'name'     => $category['name'],
                    'category_id'     => $category['category_id'],
                    'children' => $children_data,
                    'column'   => $category['column'] ? $category['column'] : 1,
                    'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
                );

        }

    /*
     * Get option product
     */
        $this->load->model('catalog/product');
        $this->data['options'] = array();
        $options = $this->model_catalog_product->getOptions();
        foreach ($options as $option) {
            $option_value = $this->model_catalog_product->getOptions_description($option['option_id']);

            $this->data['options'][] = array(
                'type'=>$option['type'],
                'name'=>$option['name'],
                'option_id'=>$option['option_id'],
                'option_value'=>$option_value
            );
        }



		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/addproduct.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/addproduct.tpl';
		} else {
			$this->template = 'default/template/account/addproduct.tpl';
		}

		$this->children = array(
			'commonuser/column_left',
			'commonuser/column_right',
			'commonuser/content_top',
			'commonuser/content_bottom',
			'commonuser/footer',
			'commonuser/header'
		);

		$this->response->setOutput($this->render());
	}
/*
 *  Ajax submit add product
 */
    public function addproduct() {

        if (!$this->customer->isLogged()) {
            $this->session->data['redirect'] = $this->url->link('account/account', '', 'SSL');
           echo  $this->url->link('account/login', '', 'SSL');
            exit();
        }


        $description_product = $this->request->post['description_product'];
        $image = $this->request->post['image'];
        $link_product = $this->request->post['link_product'];
        $name_product = $this->request->post['name_product'];
        $price_product = $this->request->post['price_product'];
		$category_id = $this->request->post['category_id'];
        $option_value = $this->request->post['option'];


		$data = array(
			'price'=>$price_product,
			'image'=>$image,
			'viewdemo'=>$link_product,
			'description'=>$description_product,
			'name'=>$name_product,
			'meta_keyword'=>$name_product,
			'meta_description'=>$name_product,
			'category_id'=>$category_id
		);
        $this->load->model('catalog/product');



        $product_id = $this->model_catalog_product->addProduct($data);
        $options = $this->model_catalog_product->getOptions();
        foreach ($options as $option) {
               if(isset($option_value[$option['option_id']]))
               {
                   if(is_numeric($option_value[$option['option_id']]))
                   {
                       $IsOptions =  $this->model_catalog_product->IsOptions($product_id,$option['option_id']);

                       if(count($IsOptions)==0)
                       {
                           $product_option_id =  $this->model_catalog_product->insertOption($product_id,$option['option_id']);
                           $this->model_catalog_product->insertOptionValue($product_option_id,$product_id,$option['option_id'],$option_value[$option['option_id']]);
                       }
                   }
                   else
                   {
                       $IsOptions =  $this->model_catalog_product->IsOptions($product_id,$option['option_id']);
                       $product_option_id = 0;
                       if(count($IsOptions)==0)
                       {
                           $product_option_id =  $this->model_catalog_product->insertOption($product_id,$option['option_id']);
                       }
                        $reset = $option_value[$option['option_id']];
                       for($i = 0; $i<count($reset); $i++) {
                           $this->model_catalog_product->insertOptionValue($product_option_id,$product_id,$option['option_id'],$reset[$i]);
                       }
                   }
               }

        }
		echo  $product_id;
		die();

    }
	 public function uploadfile() {
		
		$product_id = $this->request->post['product_id'];
	
		
		$this->language->load('sale/order');

		$json = array();


		if (!isset($json['error'])) {
			if (!empty($this->request->files['file']['name'])) {
				$filename = basename(html_entity_decode($this->request->files['file']['name'], ENT_QUOTES, 'UTF-8'));

				if ((utf8_strlen($filename) < 3) || (utf8_strlen($filename) > 128)) {
					$json['error'] = $this->language->get('error_filename');
				}

				// Allowed file extension types
				$allowed = array();

				$filetypes = explode("\n", $this->config->get('config_file_extension_allowed'));

				foreach ($filetypes as $filetype) {
					$allowed[] = trim($filetype);
				}

				if (!in_array(substr(strrchr($filename, '.'), 1), $allowed)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				// Allowed file mime types
				$allowed = array();

				$filetypes = explode("\n", $this->config->get('config_file_mime_allowed'));

				foreach ($filetypes as $filetype) {
					$allowed[] = trim($filetype);
				}

				if (!in_array($this->request->files['file']['type'], $allowed)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				// Check to see if any PHP files are trying to be uploaded
				$content = file_get_contents($this->request->files['file']['tmp_name']);

				if (preg_match('/\<\?php/i', $content)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				if ($this->request->files['file']['error'] != UPLOAD_ERR_OK) {
					$json['error'] = $this->language->get('error_upload_' . $this->request->files['file']['error']);
				}
			} else {
				$json['error'] = $this->language->get('error_upload');
			}
		}

		if (!isset($json['error'])) {
			if (is_uploaded_file($this->request->files['file']['tmp_name']) && file_exists($this->request->files['file']['tmp_name'])) {
				$ext = md5(mt_rand());

				$json['filename'] = $ext."_".$filename;
				$json['mask'] = $filename;

				move_uploaded_file($this->request->files['file']['tmp_name'], DIR_FILESOURE . $ext."_".$filename);
				
				$this->load->model('catalog/product');
				$this->model_catalog_product->updateFile($ext."_".$filename,$product_id);
				
			}

			$json['success'] = $this->language->get('text_upload');
			
		}
		
		
		
		$this->response->setOutput(json_encode($json));
		exit();
	 }

}
?>