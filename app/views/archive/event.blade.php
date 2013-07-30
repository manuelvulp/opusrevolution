<link rel="stylesheet" href="{{ asset('stylesheets/event.css') }}" type="text/css" media="screen" />
<div class="hero">
  <div class="wrapper-event container-fluid">
    <div class="event-title">{{ $event->event_title }}</div>
    <div class="event-bar">
      <div class="p10" style="float:left">
        @if (isset($event->event_author) AND !empty($event->event_author))
          From : {{ $event->event_author }}
        @endif
      </div>
      <div class="p10" style="float:right">{{ date('d-m-Y', strtotime($event->event_date_published)) }}</div>
    </div>
    <div class="event-content p10">
      {{ $event->event_content }}
    </div>
    <div class="event-link p10">
      <a href="{{ $event->event_link }}" target="_blank">Read the original article here</a>
    </div>
  </div>
</div>



