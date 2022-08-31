Rails.application.routes.draw do
  resources :properties
  get "/dashboard" => "dashboard#index", :as => :dashboard

  root to: "public#main"
  devise_for :account
end
