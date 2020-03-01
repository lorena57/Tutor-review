Rails.application.routes.draw do

  get '/' => 'sessions#welcome'

  get '/login'   => 'sessions#new'
  post '/login'  => 'sessions#create'

  get '/signup'  => 'students#new'
  post '/signup' => 'students#create'

  delete '/logout' => 'sessions#destroy'


  resources :reviews
  resources :appointments do
    resources :reviews, only: [:new, :index]
  end
  resources :tutors
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
