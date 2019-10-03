<?php
  /*  Create a custom page in PrestaShop without CMS - CustomPageController class
   *  Read the detailed tutorial at https://iftakharhasan.wordpress.com/prestashop-create-a-custom-page-without-cms
   */

  /*  The classname here will be the name of the controller  */
  // include_once _PS_MODULE_DIR_.'hotelreservationsystem/define.php';
  class FeaturesController extends FrontController{
    public $php_self = 'features';
    public function init(){
      parent::init();
    }
    public $display_column_left = false;

    public function initContent(){

      parent::initContent();
      $this->setTemplate(_PS_THEME_DIR_.'features.tpl');

    }

  /*  The following code portion is optional.
   *  Remove the double-slashes to activate the portion
   *  if you want to use external stylesheet and JavaScript for the page.
   *  Create the CSS and JS files in the css and js directories of the theme accordingly
   */

    public function setMedia(){
      parent::setMedia();
      $this->addCSS(_THEME_CSS_DIR_.'features.css');
      // $this->addJS(_THEME_JS_DIR_.'custom-page.js');
    }

}