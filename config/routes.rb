Rails.application.routes.draw do
  get  'register_attractions/index'
  get  'register_attractions/show'
  get  'register_attractions/edit/:id', :to => 'register_attractions#edit'
  get  'register_attractions/new'
  post 'register_attractions/create'
  put  'register_attractions/update/:id', :to => 'register_attractions#update'
  delete 'register_attractions/destroy/:id', :to => 'register_attractions#destroy'


  devise_for :companies
  
  root "register_attractions#index"
end
