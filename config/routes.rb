Rails.application.routes.draw do

  devise_for :users
root :to => 'students#show'


  get '/student/:id' => 'students#show', :as => :students 
  get '/student/:id/edit' => 'students#edit'
  patch '/student/:id' => 'students#update' 
  
  get '/skills/' => 'skills#index', :as => :skills
  get 'skills/new' => 'skills#new'
  get '/skills/:id/edit' => 'skills#edit'
  post 'skills' => 'skills#create'
  patch '/skills/:id' => 'skills#update'
  delete '/skills/:id' => 'skills#destroy'

  get '/experiences' => 'experiences#index', :as => :experiences
  get '/experiences/new' => 'experiences#new'
  get '/experiences/:id/edit' => 'experiences#edit'
  post '/experiences' => 'experiences#create'
  patch '/experiences/:id' => 'experiences#update'
  delete '/experiences/:id' => 'experiences#destroy'

  get '/education' => 'educations#index', :as => :educations
  get '/education' => 'educations#new'
  get '/education/:id/edit' => 'educations#edit'
  post '/education' => 'educations#create'
  patch '/education/:id' => 'educations#update'
  delete '/education/:id' => 'educations#destroy'
end