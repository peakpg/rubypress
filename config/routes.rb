# config/routes.rb
Rubypress::Engine.routes.draw do
  get "help/index"
  resources :pages
  root to: 'pages#index'
end
