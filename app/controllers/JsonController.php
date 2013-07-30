<?php

class JsonController extends Controller 
{
  public function autocompleteCountries()
  {
    $countries = DB::table('countries')
      ->select('country_nicename')
      ->where('country_name', 'LIKE', strtoupper($input) . '%')
      ->get();

    return Response::json($countries);
  }

  public function getEvents($limit = 10, $offset = 0) 
  {
    $limit = (int) $limit;
    $offset = (int) $offset;

    if (is_int($limit) AND is_int($offset) AND $limit < 101) {
      $events = ModelEvents::getEventsForArchive($limit, $offset);
      return Response::json($events);
    } else {
      return "Error getting results";
    }
  }

  public function getEventsByDate() 
  {
    $from = Input::get('from');
    $to = Input::get('to');

    $events = ModelEvents::getEventsByDate($from, $to);
    return Response::json($events);
  }

  public function getEventsAreasByDate() 
  {
    $from = Input::get('from');
    $to = Input::get('to');
    
    $events = ModelEvents::getEventsAreasByDate($from, $to);
    return Response::json($events);
  }

  public function getEventsByArea() 
  {
    $area_id = Input::get('area');
    $from = Input::get('from');
    $to = Input::get('to');

    $events = ModelEvents::getEventsByArea($area_id, $from, $to);

    return Response::json($events);
  }
}