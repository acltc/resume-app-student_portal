Rails.application.routes.draw do

  get '/skills' => 'skills#show'
  get '/student' => 'students#show'
  get '/student/:id/edit' => 'students#edit'
  get '/skills/:id/edit' => 'skills#edit'

end
