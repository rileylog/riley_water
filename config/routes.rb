WaterRightsListing::Application.routes.draw do
  resources :for_sales

  resources :wanteds

  resources :areas

  root :to => "static_pages#home"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  get "/dashboard", to: "static_pages#dashboard", as: :dashboard
  get "/buy-sell", to: "static_pages#buy_sell", as: :buy_sell
end