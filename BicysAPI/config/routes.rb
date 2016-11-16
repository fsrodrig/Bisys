Rails.application.routes.draw do
  resources :reserve_histories
  resources :reserves
  resources :entry_bicycles
  resources :terminal_entries
  resources :users
  resources :terminals
  resources :reserve_states
  resources :bicycles
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
