<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Roboto:100,300,400);

body {
  margin: 0px;
  padding: 0px;
}

.wrapper-error {
  background: #333;
  width: 100%;
}

.header-error {
  color: white;
}

.container-error {
  color: #F60;
}


.header-error,
.container-error {
  font-family: 'Roboto', sans-serif;
  font-size: 2em;
  font-weight: 100;
  margin: 0 auto;
  padding: 10px;
  text-align: center;
  width: 1200px;
}

</style>

<div class="wrapper-error">
  <div class="header-error">
    Error 404
  </div>
</div>

<div class="container-error">
  We're sorry to inform that you have been led astray. <a href="{{ url('') }}"> Return to home</a> or enjoy your stay on this rather empty page
</div>