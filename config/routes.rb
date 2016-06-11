Rails.application.routes.draw do

  get 'emotion' => 'emotion#index'

  root 'emotion#index'

end
