Rails.application.routes.draw do
  get 'register_attractions/index'
  get 'register_attractions/show'
  get 'register_attractions/edit'
  get 'register_attractions/new'
  post 'register_attractions/create'

  devise_for :companies
  
  root "register_attractions#index"
end
