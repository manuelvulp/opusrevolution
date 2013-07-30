<link rel="stylesheet" href="{{ asset('stylesheets/event.css') }}" type="text/css" media="screen" />
<div class="hero">
  <div class="wrapper-event container-fluid">
    <div class="event-title">{{ $entry->entry_title }}</div>
    <div class="event-bar">
      <div class="p10" style="float:left">
        From : {{ $entry->entry_year_start }}
      </div>
      <div class="p10" style="float:right">
        To : {{ $entry->entry_year_end }}
      </div>
    </div>
    <div class="event-content p10">
      {{ $entry->entry_content }}
    </div>
  </div>
</div>



