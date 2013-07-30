<link rel="stylesheet" href="{{ asset('stylesheets/history.css') }}" type="text/css" media="screen" />
<div class="hero">
  <div class="wrapper-archive container-fluid">
    <div class="p10 center"><h1>History</div>
    

    <div class="wrapper-gray row-fluid hidden-phone">
      <b>
        <div class="span6 left p10">Title</div>
        <div class="span3 left p10">Year started</div>
        <div class="span3 left p10">Year ended</div>
      </b>
    </div>
    
    @foreach ($entries as $entry)
      <a href="{{ $entry->entry_url }}" target="_blank">
        <div class="row-fluid">
          <div class="span6 left p10">{{ $entry->entry_title }}</div>
          <div class="span3 left p10">{{ $entry->entry_year_start }}</div>
          <div class="span3 left p10">{{ $entry->entry_year_end }}</div>
        </div>
      </a>
    @endforeach
    
  </div>
</div>

<!-- 
<script type="text/javascript" src="{{ asset('javascripts/history.js') }}"></script>
 -->

