Rails.application.routes.draw do
  devise_for :users
  root to: 'offers#index'
  # root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :offers

end
