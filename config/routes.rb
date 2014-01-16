WaterRightsListing::Application.routes.draw do
  resources :for_sales

  resources :wanteds

  resources :areas

  root :to => "static_pages#home"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  get "/dashboard", to: "static_pages#dashboard", as: :dashboard
  get "/services", to: "static_pages#services", as: :services
  get "/diligence-claims", to: "static_pages#diligence_claims", as: :diligence_claims
  get "/proof-of-beneficial-use", to: "static_pages#proof_of_beneficial_use", as: :proof_of_beneficial_use
  get "/change-application", to: "static_pages#change_application", as: :change_application
  get "/reports-of-conveyance", to: "static_pages#reports_of_conveyance", as: :reports_of_conveyance
  get "/fourty-year-plan", to: "static_pages#fourty_year_plan", as: :fourty_year_plan
  get "/extension-request", to: "static_pages#extension_request", as: :extension_request
  get "/declarations-of-beneficial-use", to: "static_pages#declarations_of_beneficial_use", as: :declarations_of_beneficial_use
  get "/applications-to-appropriate", to: "static_pages#applications_to_appropriate", as: :applications_to_appropriate
  get "/non-use-application", to: "static_pages#non_use_application", as: :non_use_application
  get "/projects", to: "static_pages#projects", as: :projects
  get "/profile", to: "static_pages#profile", as: :profile
  get "/contact", to: "static_pages#contact", as: :contact
  get "/buy-sell", to: "static_pages#buy_sell", as: :buy_sell
end