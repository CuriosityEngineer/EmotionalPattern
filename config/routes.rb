Rails.application.routes.draw do

  resources :emotions, only: [:create, :show], controller: :emotion

  root 'emotion#index'

end
