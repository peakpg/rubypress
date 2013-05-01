# Rubypress

This is a demo Content Management project designed to show off various Rails Engine features. It is the compliment to go with my presenation at RailsConf 2013 on Mountable Engines. It's main purpose is to provide code samples for the presentation.

Since the presentation was iteratively developed, many of the code snippets will remain commented out.

## References 

 - Slides for the talk can be found here: https://speakerdeck.com/peakpg/creating-mountable-engines
 - To comment on the talk go here: http://speakerrate.com/talks/22061-creating-mountable-engines
 - To tweet @ or about me / the talk: @peakpg

## Long Form Installation

As presented in the talk, these might not actually work if you try to install this a gem on a project.

gem "rubypress"

# Run this
$ bundle install
$ rake rubypress:install:migrations
$ rake db:migrate

mount Rubypress::Engine => "/rubypress"

## Better Installation

gem "rubypress"

$ rail g rubypress:install
