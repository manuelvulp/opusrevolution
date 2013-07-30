<?php

class HomeController extends BaseController 
{
  public function index()
  {
    $this->setActiveMenuItem('item-menu-2', 'item-featured-1');

    // var_dump(ModelEvents::getEventsAreasByDate('2013-07-28', '2013-07-31'));
    $this->view = View::make('home.index');
    // RSS::updateDatabaseFeeds();
    return $this->render();
  }

  

}