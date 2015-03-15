Rails.application.routes.draw do

  get '/student' => 'students#show'
  get '/student/:id/edit' => 'students#edit'
  get '/skills' => 'skills#show'
  get '/skills/:id/edit' => 'skills#edit'

end
