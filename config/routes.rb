Rails.application.routes.draw do

  get '/' => 'sessions#welcome'

  get '/login'   => 'sessions#new'
  post '/login'  => 'sessions#create'
  get '/signup'  => 'students#new'


  resources :reviews
  resources :appointments
  resources :tutors
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
