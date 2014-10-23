<?php
class ModelSettingExtension extends Model {
	function getExtensions($type) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "extension WHERE `type` = '" . $this->db->escape($type) . "' and  store_id = ".(int)$this->config->get('config_store_id')."   ");

		return $query->rows;
	}
}
?>