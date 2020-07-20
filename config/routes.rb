Rails.application.routes.draw do
  root to: 'reports#index'
  get "/reports/new" => "reports#new"
  
  post "/reports/create" => "reports#create"
  
  get "/reports/:id" => "reports#show"
end
