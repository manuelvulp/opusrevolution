<?php

class ModelRSS extends Eloquent {

	protected $table = 'rss';
	protected $primaryKey = 'rss_id';

	public static function addEvent($event) 
	{
		$areas = DB::table('areas')->lists('area_name', 'area_id');
		$eventExists = DB::table('events')->where('event_title', $event->title)->first();
		
		$areaId = null;

		if (!$eventExists) {
			foreach ($areas as $key => $val) {
				if (strpos(strtolower($event->title), strtolower($val)) !== false) {
					$datetime = new DateTime($event->pubDate);

					DB::table('events')->insert(array(
						'event_title' => $event->title, 
						'event_date_published' => $datetime->format('Y-m-d H:i:s'),
						'event_link' => $event->link,
						'event_content' => $event->description,
						'event_type_id' => $event->eventTypeId,
						'area_id' => $key
					));
        }
			}
		}
	}

}