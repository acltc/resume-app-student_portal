Rails.application.routes.draw do

  devise_for :users
root :to => 'students#show'

  get '/students' => 'students#index'
  get '/students/new' => 'students#new'
  get '/students/:id' => 'students#show'
  get '/students/:id/edit' => 'students#edit'
  patch '/students/:id' => 'students#update' 
  
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

  get '/educations' => 'educations#index', :as => :educations
  get 'educations' => 'educations#new'
  get '/educations/:id/edit' => 'educations#edit'
  post '/educations' => 'educations#create'
  patch '/educations/:id' => 'educations#update'
  delete '/educations/:id' => 'educations#destroy'
end