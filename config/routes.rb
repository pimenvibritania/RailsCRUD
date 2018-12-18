Rails.application.routes.draw do

  root to: 'classmates#index'
  resources :classmates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
