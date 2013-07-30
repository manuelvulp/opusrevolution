<?php

class ArchiveController extends BaseController 
{
  public function index()
  {
    $this->setActiveMenuItem('item-menu-2', 'item-featured-2');
    $this->view = View::make('archive.index');
    return $this->render();
  }

  public function event($event_id) 
  {
    $this->setActiveMenuItem('item-menu-2', 'item-featured-2');
    $this->view = View::make('archive.event');

    $event = ModelEvents::getEvent($event_id);
    $this->view->event = $event;
    return $this->render();
  }
}