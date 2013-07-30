<html><head>

<meta http-equiv="content-type" content="text/html; charset=utf-8">

<!-- JQUERY -->
<script type="text/javascript" src="{{ asset('javascripts/jquery/jquery-2.0.2.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('javascripts/jquery/jquery.color-2.1.1.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('javascripts/jquery/jquery-ui-1.10.2.custom.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('javascripts/jquery/jquery.animate-shadow-min.js') }}"></script>

<!-- BOOTSTRAP -->
<link rel="stylesheet" href="{{ asset('stylesheets/bootstrap/bootstrap.min.css') }}" type="text/css" media="screen" />
<link rel="stylesheet" href="{{ asset('stylesheets/bootstrap/bootstrap-responsive.min.css') }}" type="text/css" media="screen" />
<link rel="stylesheet" href="{{ asset('stylesheets/bootstrap/bootstrap-fileupload.min.css') }}" type="text/css" media="screen" />
<script type="text/javascript" src="{{ asset('javascripts/bootstrap/bootstrap.min.js') }}"></script>

<!-- KUBE -->
<!-- <link rel="stylesheet" href="{{ asset('stylesheets/kube/kube.min.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('stylesheets/kube/master.css') }}" type="text/css" />
<script type="text/javascript" src="{{ asset('javascripts/kube/kube.buttons.js') }}"></script>
<script type="text/javascript" src="{{ asset('javascripts/kube/kube.tabs.js') }}"></script> -->

<link rel="stylesheet" href="{{ asset('stylesheets/layout.css') }}" type="text/css" media="screen" />

</head><body><div class="wrapper">

<div class="wrapper-header ">
  <div class="container-fluid">
    <div class="row-fluid">
    
      <a href="{{ url('') }}" class="item-menu item-menu-1 span3">
        &nbsp;
        <div class="triangle-header hidden-phone"></div>
      </a>
    
      <a href="#" class="item-menu item-menu-divider visible-phone span3">
        
      </a>
    
      <a href="#" class="item-menu item-menu-2 span3">
        home
      </a>

      <a href="#" class="item-menu item-menu-3 span3">
        history
      </a>

      <a href="#" class="item-menu item-menu-4 span3">
        about
      </a>

    </div>
  </div>
</div>


<div class="wrapper-subheader ">
  <div class="slider-subheader">


    <div class="item-subheader-1 item-menu-1-subheader">
      <div class="item-subheader-1-content">



      </div>
    </div>

    <div class="item-subheader-2 item-menu-2-subheader">
      <div class="item-subheader-2-content">

        <div class="p10">
          <a href="{{ url('') }}" class="title-featured item-featured-1">
            Map
          </a>
          <a class="title-featured faded-out"><span class="faded-out"> / </span> </a>
          <a href="{{ url('archive') }}" class="title-featured item-featured-2">
            Archive
          </a>
        </div>

      </div>
    </div>

    <div class="item-subheader-3 item-menu-3-subheader">
      <div class="item-subheader-3-content">

        <div class="p10">
          <a href="{{ url('history/start/1800/end/1900') }}" class="title-featured item-featured-1">
            1800 - 1900
          </a>
          <a class="title-featured faded-out"><span class="faded-out"> / </span> </a>
          <a href="{{ url('history/start/1901/end/2000') }}" class="title-featured item-featured-2">
            1901 - 2000
          </a>
          <a class="title-featured faded-out"><span class="faded-out"> / </span> </a>
          <a href="{{ url('history/start/2001/end/2013') }}" class="title-featured item-featured-3">
            2001 - 2013
          </a>
        </div>

      </div>
    </div>

    <div class="item-subheader-4 item-menu-4-subheader">
      <div class="item-subheader-4-content">

        <div class="p10">
          <a href="{{ url('site') }}" class="title-featured item-featured-1">
            Site
          </a>
          <a class="title-featured faded-out"><span class="faded-out"> / </span> </a>
          <a href="{{ url('us') }}" class="title-featured item-featured-2">
            Us
          </a>
          <a class="title-featured faded-out"><span class="faded-out"> / </span> </a>
          <a href="{{ url('contact') }}" class="title-featured item-featured-3">
            Contact
          </a>
        </div>

      </div>
    </div>

  </div>
</div>

@if ($view)
  {{ $view }}
@endif


<div class="push"></div></div>

<!-- <div class="wrapper-footer">
  <div class="container-fluid center">

  </div>
</div>
 -->


<input type="hidden" class="activeFeaturedItem" value="{{ $activeFeaturedItem }}" />
<input type="hidden" class="activeMenuItem" value="{{ $activeMenuItem }}" />
<script type="text/javascript" src="{{ asset('javascripts/layout.js') }}"></script>

</body></html>