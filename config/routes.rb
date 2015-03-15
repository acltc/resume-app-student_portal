Rails.application.routes.draw do
  devise_for :users
root :to => 'students#show'




  get '/students/:id' => 'students#show', :as => :student
  get '/students/:id/edit' => 'students#edit'
  get '/skills/:id' => 'skills#show'
  get '/skills/:id/edit' => 'skills#edit'

end
