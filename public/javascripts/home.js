var animationSpeed = 150;

var areas;
var events;

var eventUrl = './archive/';

$('.datepicker-from').datepicker();
$('.datepicker-to').datepicker();

var currentDate = new Date();
var dateWeekAgo = new Date();
currentDate.setDate(currentDate.getDate() + 1);
dateWeekAgo.setDate(dateWeekAgo.getDate() - 14);

$('.datepicker-from').val((dateWeekAgo.getMonth() + 1) + '/' + dateWeekAgo.getDate() + '/' + dateWeekAgo.getFullYear());
$('.datepicker-to').val((currentDate.getMonth() + 1) + '/' + currentDate.getDate() + '/' + currentDate.getFullYear());

$(document).ready(function() {
  getEventsAreas();
})


$('.datepicker-from').change(function() {
  getEventsAreas();
})

$('.datepicker-to').change(function() {
  getEventsAreas();
})

function triggerFists() {
  $('.trigger-fist').each(function() {
    $(this).click(function() {
      $('.wrapper-info').fadeOut(animationSpeed);
      $('.fist').css({ 'zIndex': '0' });
      $(this).parent().css({ 'zIndex': '1000' })
      var area = $(this).find('.area_id').val();
      getEventsByArea(area);
      $(this).parent().find('.wrapper-info').fadeToggle(animationSpeed);
      // len = $(this).parent().find('.wrapper-info').width();
      // console.log(len);
    })
  })
}

Date.prototype.formatDate = function() {
  var yyyy = this.getFullYear();
  var mm = (this.getMonth() + 1).toString();
  var dd  = this.getDate().toString();

  if (mm.length == 1) {
    mm = '0' + mm;
  }
  if (dd.length == 1) {
    dd = '0' + dd;
  }

  var formattedDate = yyyy + '-' + mm + '-' + dd;
  return formattedDate;
};

Date.prototype.dateToDMY = function() {
  var yyyy = this.getFullYear();
  var mm = (this.getMonth() + 1).toString();
  var dd  = this.getDate().toString();

  if (mm.length == 1) {
    mm = '0' + mm;
  }
  if (dd.length == 1) {
    dd = '0' + dd;
  }

  var formattedDate = dd + '-' + mm + '-' + yyyy;
  return formattedDate;
};

function getEventsAreas() {
  var from = new Date($('.datepicker-from').val());
  var to = new Date($('.datepicker-to').val());

  $.ajax({
    method: 'POST',
    data: {
      from: from.formatDate(),
      to: to.formatDate()
    },
    url: './json/areasbydate',
    dataType: 'json'
  })
  .done(function(response) {
    areas = response;
    parseEvents();
  })
}

function getEventsByArea(area) {
  var from = new Date($('.datepicker-from').val());
  var to = new Date($('.datepicker-to').val());

  $.ajax({
    method: 'POST',
    data: {
      area: area,
      from: from.formatDate(),
      to: to.formatDate()
    },
    url: './json/byarea',
    dataType: 'json'
  })
  .done(function(response) {
    appendEventsToDiv(response);
  })
}

function parseEvents() {
  clearMap();
  composeMap();
  triggerFists();
}

function clearMap() {
  $('.fist').each(function() {
    $(this).fadeOut(animationSpeed, function() {
      $(this).remove();
    })
  })
}

function composeMap() {
  for (var i = 0; i < areas.length; i++) {
    $('.wrapper-world').append('<div class="fist area_' + areas[i].area_id + '" style="margin-left:' + areas[i].area_x + '; margin-top:' + areas[i].area_y + '"> <div class="trigger-fist"><input type="hidden" class="area_id" value="' + areas[i].area_id + '"/></div> <div class="wrapper-info"> <div class="content-info"></div> </div> </div>');
  }
}

$('.search').click(function() {
  getEventsAreas();
})

function appendEventsToDiv(events) {
  var areaClass = '.area_' + events[0].area_id;
  $(areaClass).find('.content-info').html('');

  for (var i = 0; i < events.length; i++) {
    // var event_date = new Date(events[i].event_date_published).dateToDMY();
    var event_date = events[i].event_date_published;
    var author = events[i].event_author;
    
    if (author == undefined || author == '') {
      author = '';
    } else {
      author = '| from : ' + events[i].event_author;
    }
    $(areaClass).find('.content-info').append('<a href="' + eventUrl + events[i].event_id + '" class="event-title"> <div class="event-wrapper"> ' + events[i].event_title + ' <span class="event-author">' + author + '</span> <span class="event-date"> | ' + event_date + '</span></div> </a>');
  }

  // animationFX();
}

// function animationFX() {
//   $('.event-wrapper').each(function() {
//     $(this).mouseenter(function() {
//       backgroundColor: 'white'
//     });

//     $(this).mouseleave(function() {
//       backgroundColor: 'transparent'
//     });
//   })
// }
