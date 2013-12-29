WaterRightsListing::Application.routes.draw do
  resources :wanteds

  resources :areas

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end