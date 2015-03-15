Rails.application.routes.draw do
  get '/student' => 'students#show'
  get '/student/:id/edit' => 'students#edit'
<<<<<<< HEAD
  get '/skills/:id' => 'skills#show'
=======
  get '/skills' => 'skills#show'
>>>>>>> 6053f70a59d717ac9367feb97a6ef6702e04e196
  get '/skills/:id/edit' => 'skills#edit'

end
