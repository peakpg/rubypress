# Rubypress

This is a demo Content Management project designed to show off various Rails Engine features. It is the compliment to go with my presenation at RailsConf 2013 on Mountable Engines. It's main purpose is to provide code samples for the presentation.

Since the presentation is iteratively developed, many of the code snippets will remain commented out.

## References 

 - Slides for the talk can be found here: [Coming soon!]
 - To comment on the talk go here: http://speakerrate.com/talks/22061-creating-mountable-engines
 - To tweet @ or about me / the talk: @peakpg

## Long Form Installation

gem "rubypress"

# Run this
$ bundle install
$ rake rubypress:install:migrations
$ rake db:migrate

mount Rubypress::Engine => "/rubypress"

## Better Installation

gem "rubypress"

$ rail g rubypress:install
