<?php

class RssController extends BaseController 
{
  public function updateRssFeed()
  {
    $events = RSS::updateDatabaseFeeds();

    foreach ($events as $event) {
      ModelRSS::addEvent($event);
    }

    return 'RSS feed update complete';
  }
}