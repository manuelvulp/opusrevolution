<?php

class AboutController extends BaseController 
{
  public function site()
  {
    $this->setActiveMenuItem('item-menu-4', 'item-featured-1');
    $this->view = View::make('about.site');
    return $this->render();
  }

  public function us()
  {
    $this->setActiveMenuItem('item-menu-4', 'item-featured-2');
    $this->view = View::make('about.us');
    return $this->render();
  }

  public function contact()
  {
    $this->setActiveMenuItem('item-menu-4', 'item-featured-3');
    $this->view = View::make('about.contact');
    return $this->render();
  }

  

}