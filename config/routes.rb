Rails.application.routes.draw do
  resources :attractions
  devise_for :companies
  
  root "attractions#index"
end
