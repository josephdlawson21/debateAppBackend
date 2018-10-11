Rails.application.routes.draw do
  resources :tournaments
  resources :rounds
  namespace :api, defaults: {format: :json}  do
   namespace :v1 do
     resources :users
     resources :schools
   end
 end
end
