Rails.application.routes.draw do
  root to: "companies#index"
  resources :policies
  resources :companies
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
