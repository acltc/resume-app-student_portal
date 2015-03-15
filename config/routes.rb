Rails.application.routes.draw do

  get ':student', to: 'students#show', as: :student
  get '/:student/edit' => 'students#edit'
  get '/skills' => 'skills#show'
  get '/skills/:student/edit' => 'skills#edit'

end
