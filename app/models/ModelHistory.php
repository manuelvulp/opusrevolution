<?php

class ModelHistory extends Eloquent {

	protected $table = 'history';
	protected $primaryKey = 'entry_id';
	
	public static function getEvent($primaryKey)
	{
		$event = DB::table('history')->where('entry_id', '=', $primaryKey)->first();

		return $event;
	}

	public static function getEventsBetween($from, $to)
	{
		$events = DB::table('history')
      ->where('entry_year_start', '>=', $from)
      ->where('entry_year_end', '<=', $to)
      ->orderBy('entry_id', 'asc')
      ->get();

    return $events;
	}
}