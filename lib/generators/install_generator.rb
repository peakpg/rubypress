# lib/generators/rubypress/install_generator.rb
module Rubypress
  class InstallGenerator < Rails::Generators::Base
    def install
      run 'bundle install'
      route "mount Rubypress::Engine => '/rubypress'"
      rake 'rubypress:install:migrations'
      rake 'db:migrate'
    end
  end
end

