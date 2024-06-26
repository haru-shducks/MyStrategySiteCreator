Rails.application.routes.draw do

  root "homus#top"
  get 'homus/about'
  devise_for :users
  resources :sites
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
