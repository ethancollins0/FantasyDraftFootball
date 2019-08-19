Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sessions/new'
  get 'sessions/signup'
  root 'application#home'
  
  get '/', to: 'application#home'
  get '/application/add_player'
  post '/application/add_player' => 'application#add_to_roster'
  
  get '/login' => 'sessions#new'
  get '/signup' => 'sessions#signup'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
