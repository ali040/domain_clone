Rails.application.routes.draw do
  resources :properties
  get "/dashboard" => "dashboard#index", :as => :dashboard
  get "dashboard/properties"
  get "dashboard/reports"
  root to: "public#main"
  devise_for :account
end
