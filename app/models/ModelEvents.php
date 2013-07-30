<?php

class ModelEvents extends Eloquent {

	protected $table = 'events';
	protected $primaryKey = 'event_id';
	
	public static function getEvent($primaryKey)
	{
		$event = DB::table('events')->where('event_id', '=', $primaryKey)->first();

		return $event;
	}

	public static function getEventsByDate($from, $to)
	{
		$events = DB::table('events')
			->select(
				'events.event_id',
				'events.event_title',
				'events.event_author',
				'events.event_date_published',
				'areas.area_name',
				'areas.area_x',
				'areas.area_y')
      ->join(
        'areas', 
        'events.area_id', '=', 
        'areas.area_id')
      ->whereBetween('events.event_date_published', array($from, $to))
      ->orderBy('event_id', 'asc')
      ->get();

    return $events;
	}

	public static function getEventsAreasByDate($from, $to)
	{
		$events = DB::table('events')
			->select(
				'areas.area_id',
				'areas.area_name',
				'areas.area_x',
				'areas.area_y')
      ->join(
        'areas', 
        'events.area_id', '=', 
        'areas.area_id')
      ->whereBetween('events.event_date_published', array($from, $to))
      ->orderBy('event_id', 'asc')
      // ->distinct()
      ->get();

    return $events;
	}

	public static function getEventsByArea($area_id, $from, $to)
	{
		$events = DB::table('events')
			->select(
				'events.event_id',
				'events.event_title',
				'events.event_date_published',
				'events.event_author',
				'areas.area_id',
				'areas.area_name',
				'areas.area_x',
				'areas.area_y')
      ->join(
        'areas', 
        'events.area_id', '=', 
        'areas.area_id')
      ->where('areas.area_id', '=', $area_id)
      ->whereBetween('events.event_date_published', array($from, $to))
      ->orderBy('event_id', 'asc')
      ->get();

    return $events;
	}

	public static function getEventsForArchive($limit, $offset)
	{
		$events = DB::table('events')
			->select(
				'events.event_id',
				'events.event_title',
				'events.event_date_published',
				'areas.area_name')
      ->join(
        'areas', 
        'events.area_id', '=', 
        'areas.area_id')
      ->orderBy('event_id', 'asc')
      ->take($limit)
      ->skip($offset)
      ->get();

		return $events;
	}

}