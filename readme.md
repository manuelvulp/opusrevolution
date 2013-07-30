## Revolutions for Opus ##

This project is designed to crawl chosen RSS feeds for revolutions, uprisings and protests all around the world.

### Installation ###

1) Make sure your server has curl for PHP enabled

2) Setup database by importing :
  
  /sql/revolution.sql

3) Visit "www.yoursite.com/updaterss " to update database with RSS feeds

That's it! You're good to go


## Brief overview of this website

- Built on Laravel (PHP Framework)

- Uses AJAX for better UX

- Custom RSS Library under /vendor/laravel/framework/src/Illuminate/Support/Facades/RSS.php

    *Any additional RSS feed should be added there*

- Since it might be a slight challenge to find exactly the information needed from RSS feeds, example events have been included out of the box


## Brief overview of structure should one need to find any files made for this project

- Controller files -> **/app/controllers** 
- View files -> **/app/views**
- Models -> **/app/models**
- Assets -> **/public/**
- Routing -> **/app/routes.php**