var offset = 0;
var limit = 10;
var url = './archive/';

getEvents();

function getEvents() {
  $.ajax({
    method: 'GET',
    url: './json/' + limit + '/' + offset,
    dataType: 'json'
  })
  .done(function(response) {
    offset = offset + 10;
    parseEvents(response);
  })
}

function parseEvents(events) {
  for (var i = 0; i < events.length; i++) {
    $('.archive').append('' +
      '<a href="' + url + events[i].event_id + '"> <div class="row-fluid visible-phone"> <hr> </div> <div class="row-fluid hidden-phone"> <div class="span6 left p10">' + events[i].event_title + '</div> <div class="span4 left p10">' + events[i].area_name + '</div> <div class="span2 left p10">' + events[i].event_date_published + '</div> </div> <div class="row-fluid visible-phone"> <div class="span6 left p10">Title : ' + events[i].event_title + '</div> <div class="span4 left p10">Area : ' + events[i].area_name + '</div> <div class="span2 left p10">Date : ' + events[i].event_date_published + '</div> </div> </a>'
    +'');
  }
}

$('.get-more').click(function() {
  getEvents();
})
