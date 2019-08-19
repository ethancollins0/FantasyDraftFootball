Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sessions/new'
  root 'application#home'
  
  get '/', to: 'application#home'
  get '/application/add_player'
  post '/application/add_player' => 'application#add_to_roster'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
