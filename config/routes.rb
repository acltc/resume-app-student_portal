Rails.application.routes.draw do


 
  get '/student' => 'students#show'
  get '/student/:id/edit' => 'students#edit'

  
  get '/skills/:id/edit' => 'skills#edit'
  get '/skills' => 'skills#show'