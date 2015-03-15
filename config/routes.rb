Rails.application.routes.draw do

  devise_for :users
root :to => 'students#show'




  get '/students/:id' => 'students#show', :as => :student
  get '/students/:id/edit' => 'students#edit'

  get '/skills/:id' => 'skills#show'
  get '/skills/:id/edit' => 'skills#edit'
  get '/education/:id' => 'educations#show'
  get 'education/:id/edit' => 'educations#edit'

end
