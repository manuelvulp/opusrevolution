
/*************************************
************ VARIABLES ***************
*************************************/

var animationSpeed = 150;

var colorTan = '#008080', // tan
    colorRed = '#DB1414', // red
    colorRedTinie = '#EC1C24', //red
    colorFeedMe = '#78d615',
    colorBlue = '#0089C4'; // blue

var itemMenuColor = '#F60';
var itemMenuLeave = '#333';

var menuVariables = new Object();
menuVariables['item-menu-2'] ='417px';
menuVariables['item-menu-3'] ='726px';
menuVariables['item-menu-4'] ='1030px';

calculateMenuWidth();

/*************************************
************ FUNCTIONS ***************
*************************************/


function animateBackgroundY(div, margin) {
  div.mouseenter(function() {
    div.stop().animate({ 
      'background-position-y': margin
    }, animationSpeed) 
  })

  div.mouseleave(function() {
    div.stop().animate({ 
      'background-position-y': '0px',
    }, animationSpeed) 
  })
}

function animateBackgroundX(div, margin) {
  div.mouseenter(function() {
    div.stop().animate({ 
      'background-position-x': margin
    }, animationSpeed) 
  })

  div.mouseleave(function() {
    div.stop().animate({ 
      'background-position-x': '0px',
    }, animationSpeed) 
  })
}

function getJson(url) {
  $.ajax({
    url: url
  })
  .done(function(response) {
    console.log(response);
  })
  .error(function(response) {
    console.log('Error getting results')
  })
}

// $('.class').stop().css({
//   'background': 'black'
// })


$('.item-menu').stop().each(function() {
  $(this).mouseenter(function() {
    $(this).find('.menu-bar').stop().animate({
      backgroundColor: itemMenuColor,
      opacity: '1'
    }, 'fast')
  })

  $(this).mouseleave(function() {
    $(this).find('.menu-bar').stop().animate({
      opacity: '0'
    }, 'fast')
  })
})

function animateMenu(menuItem) {
  $('.' + menuItem).stop().mouseenter(function() {
    calculateMenuWidth();
    $('.triangle-header').animate({
      marginLeft: menuVariables[menuItem]
    }, animationSpeed)
  })

  $('.' + menuItem).parent().mouseleave(function() {
    calculateMenuWidth();
    $('.triangle-header').stop().animate({
      marginLeft: menuVariables[activeMenuItem]
    }, animationSpeed)
  })
}

function animateSubheaderContent(div, marginLeft) {
  div.click(function() {
    $('.slider-subheader').animate({
      marginLeft: marginLeft
    }, animationSpeed)
  })
}

function animateMenuClicked(menuItem) {
  $('.' + menuItem).click(function() {
    $('.triangle-header').animate({
      marginLeft: menuVariables[menuItem]
    }, animationSpeed)

    activeMenuItem = menuItem;
  })
}

function calculateMenuWidth(divClass) {
  var menuWidth = $('.wrapper-header').find($('.row-fluid')).width() / 100;

  menuVariables['item-menu-2'] = (menuWidth * 34.6);
  menuVariables['item-menu-3'] = (menuWidth * 60.5);
  menuVariables['item-menu-4'] = (menuWidth * 86);
}

/*************************************
*********** APPLICATION **************
*************************************/

/**
 *  Get current active menu item
 */
var activeMenuItem = $('.activeMenuItem').val();
var activeFeaturedItem = $('.activeFeaturedItem').val();

console.log(activeMenuItem, activeFeaturedItem);
$('.' + activeMenuItem).addClass('active-item-menu');
$('.' + activeMenuItem + '-subheader').find('.' + activeFeaturedItem).addClass('active-text');

if (activeMenuItem == 'item-menu-1') {
  $('.slider-subheader').animate({
    marginLeft: '0'
  }, animationSpeed)
}

if (activeMenuItem == 'item-menu-2') {
  $('.slider-subheader').animate({
    marginLeft: '-100%'
  }, animationSpeed)
}

if (activeMenuItem == 'item-menu-3') {
  $('.slider-subheader').animate({
    marginLeft: '-200%'
  }, animationSpeed)
}

if (activeMenuItem == 'item-menu-4') {
  $('.slider-subheader').animate({
    marginLeft: '-300%'
  }, animationSpeed)
}

/**
 *  Animate hover effects accordingly
 */

// var menuVariables = new Object();

// menuVariables['item-menu-1'] ='60px';
// menuVariables['item-menu-2'] ='265px';
// menuVariables['item-menu-3'] ='470px';
// menuVariables['item-menu-4'] ='675px';
// menuVariables['item-menu-5'] ='880px';
// menuVariables['item-menu-6'] ='1085px';

// menuVariables['item-menu-1'] ='110px';
// menuVariables['item-menu-2'] ='417px';
// menuVariables['item-menu-3'] ='726px';
// menuVariables['item-menu-4'] ='1030px';

$('.triangle-header').css({ marginLeft: menuVariables[activeMenuItem] })

for (menuItem in menuVariables) {
  animateMenu(menuItem);
  animateMenuClicked(menuItem);
}

// animateSubheaderContent($('.item-menu-1'), '0%');
animateSubheaderContent($('.item-menu-2'), '-100%');
animateSubheaderContent($('.item-menu-3'), '-200%');
animateSubheaderContent($('.item-menu-4'), '-300%');

animateBackgroundY($('.item-menu-2'), '-80px');
animateBackgroundY($('.item-menu-3'), '-80px');
animateBackgroundY($('.item-menu-4'), '-80px');