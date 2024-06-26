Rails.application.routes.draw do
  devise_for :users
  get 'sites/index'
  get 'sites/new'
  get 'sites/show'
  get 'sites/edit'
  root "homus#top"
  get 'homus/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
