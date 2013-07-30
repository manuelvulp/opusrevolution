<?php

class BaseController extends Controller {

	protected $layoutView = 'layout.layout';

	/**
	 *	Set global layout for all pages
	 *
	 * @return void
	 */
	public function __construct()
  {
  	$this->setLayout($this->layoutView);
  	$this->setActiveMenuItem();
  }

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	// public function setupLayout()
	// {
	// 	if ( ! is_null($this->layout)) {
	// 		$this->layout = View::make('layout.layout');
	// 	}
	// }

	protected function setLayout($layout) 
	{
		$this->layout = View::make($layout);
	}

	public function setLayoutContent($view) 
	{
		$this->view = $view;
	}

	public function render()
	{
		$this->layout->view = $this->view;

		return $this->layout;
	}

	public function setActiveMenuItem($activeMenuItem = null, $activeFeaturedItem = null)
	{
		if (!$activeMenuItem) {
			$this->layout->activeMenuItem = 'null';
		} else {
			$this->layout->activeMenuItem = $activeMenuItem;
		}

		if (!$activeFeaturedItem) {
			$this->layout->activeFeaturedItem = 'null';
		} else {
			$this->layout->activeFeaturedItem = $activeFeaturedItem;
		}
	}
}