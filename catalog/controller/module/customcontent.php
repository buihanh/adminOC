<?php  
class ControllerModuleCustomcontent extends Controller {
	protected function index($setting) {
		
		$this->language->load('module/customcontent');
		
    	$this->data['heading_title'] = sprintf($this->language->get('heading_title'), $this->config->get('config_name'));
    	
		$description = isset( $setting['description'][$this->config->get('config_language_id')] ) ? $setting['description'][$this->config->get('config_language_id')] : "";
		
		$title = isset( $setting['module_title'][$this->config->get('config_language_id')] ) ? $setting['module_title'][$this->config->get('config_language_id')] : "";
		
		$this->data['message'] = html_entity_decode($description,  ENT_QUOTES, 'UTF-8'  ) ;
		$this->data['title'] = html_entity_decode( $title, ENT_QUOTES, 'UTF-8' );
		$this->data['module_class'] = isset($setting['module_class'])? " ".$setting['module_class'] : "";
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/customcontent.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/customcontent.tpl';
		} else {
			$this->template = 'default/template/module/customcontent.tpl';
		}
		
		$this->render();
	}
}
?>