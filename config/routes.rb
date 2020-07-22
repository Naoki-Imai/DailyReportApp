Rails.application.routes.draw do

  devise_for :users
  resources :users
  root to: 'reports#index'
  get "/reports/new" => "reports#new"
  
  post "/reports/create" => "reports#create"
  
  get "/reports/:id" => "reports#show"
  
  get "/reports/:id/edit" => "reports#edit"
  
  post "/reports/:id/update" => "reports#update"
  
  delete "/reports/:id/delete" => "reports#destroy"
end
