<?php

class EventsController extends BaseController 
{
  public function index()
  {
    $this->view = View::make('archive.index');
    // RSS::updateDatabaseFeeds();
    return $this->render();
  }

  

}