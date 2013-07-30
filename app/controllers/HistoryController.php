<?php

class HistoryController extends BaseController 
{
  public function index($from, $to)
  {
    if ($from == 1800 AND $to == 1900) {
      $this->setActiveMenuItem('item-menu-3', 'item-featured-1');
    } else if ($from == 1901 AND $to == 2000) {
      $this->setActiveMenuItem('item-menu-3', 'item-featured-2');
    } else if ($from == 2001 AND $to == 2013) {
      $this->setActiveMenuItem('item-menu-3', 'item-featured-3');
    } else {
      $this->setActiveMenuItem('item-menu-3');
    }
    
    $this->view = View::make('history.index');

    $entries = ModelHistory::getEventsBetween($from, $to);

    if (!empty($entries)) {
      $this->view->entries = $entries;
    }
    
    return $this->render();
  }

  public function event($id)
  {
    $this->setActiveMenuItem('item-menu-3');
    $this->view = View::make('history.event');

    $entry = ModelHistory::getEvent($id);
    
    if (!empty($entry)) {
      $this->view->entry = $entry;
    }
    
    return $this->render();
  }

  

}