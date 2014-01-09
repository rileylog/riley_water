WaterRightsListing::Application.routes.draw do
  resources :for_sales

  resources :wanteds

  resources :areas

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  get "/dashboard", to: "home#dashboard", as: :dashboard
  get "/new_home", to: "home#new_home", as: :new_home
end