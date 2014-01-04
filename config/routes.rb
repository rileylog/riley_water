WaterRightsListing::Application.routes.draw do
  resources :for_sales

  resources :wanteds

  resources :areas

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  get "/dashboard", to: "home#dashboard", as: :dashboard
end