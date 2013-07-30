## Revolutions for Opus ##

This project is designed to crawl chosen RSS feeds for revolutions, uprisings and protests all around the world.

### Installation ###

1) Make sure your server has curl for PHP enabled

2) Setup database by importing :
  
  /sql/revolution.sql

If you are not installing this on localhost with username root and no password then change it to whatever you have under **/app/config/database.php**

3) Visit "www.yoursite.com/updaterss " to update database with RSS feeds

That's it! You're good to go


## Brief overview of this website

- Built on Laravel (PHP Framework)

- Uses AJAX for better UX

- Images created with Photoshop

- Custom RSS Library under /vendor/laravel/framework/src/Illuminate/Support/Facades/RSS.php

    *Any additional RSS feed should be added there*

- Since it might be a slight challenge to find exactly the information needed from RSS feeds, example events have been included out of the box


## Overview of structure 
### (Should one need to find any files made for this project)

- Controller files -> **/app/controllers** 
- View files -> **/app/views**
- Models -> **/app/models**
- Assets -> **/public/**
- Routing -> **/app/routes.php**