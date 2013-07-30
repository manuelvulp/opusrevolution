<?php

class HomeController extends BaseController 
{
  public function index()
  {
    $this->setActiveMenuItem('item-menu-2', 'item-featured-1');
    $this->view = View::make('home.index');
    return $this->render();
  }
}