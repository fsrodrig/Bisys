Rails.application.routes.draw do
  resources :reserves
  resources :terminal_entries
  resources :accounts
  resources :users
  root 'welcome#index'
  resources :reserve_histories
  resources :entry_bicycles
  resources :terminals
  resources :reserve_states
  resources :bicycles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
