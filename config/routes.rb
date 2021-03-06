Rails.application.routes.draw do
  resources :addresses
  resources :users
  resources :events
  resources :constituent_events
  resources :donation_programs
  resources :contact_histories
  resources :membership_records
  resources :constituent_membership_records
  resources :donation_histories
  resources :constituents

  # Semi-static page routes
  get 'home' => 'home#home', as: :home

  # Set the root url
  root :to => 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
