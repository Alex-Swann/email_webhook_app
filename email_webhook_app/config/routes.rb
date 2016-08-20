Rails.application.routes.draw do
  root :to => 'data#index'

  post '/data' => 'data#create'

  resources :data
end
