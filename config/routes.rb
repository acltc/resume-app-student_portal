Rails.application.routes.draw do
  get '/student/:id' => 'students#show'
  get '/student/:id/edit' => 'students#edit'
  get '/skills/:id' => 'skills#show'
  get '/skills/:id/edit' => 'skills#edit'
  get '/education/:id' => 'educations#show'
  get 'education/:id/edit' => 'educations#edit'
  
end
