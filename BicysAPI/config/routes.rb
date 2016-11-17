Rails.application.routes.draw do
  resources :accounts
  resources :users
  root 'welcome#index'
  resources :reserve_histories
  resources :reserves
  resources :entry_bicycles
  resources :terminal_entries
  resources :terminals
  resources :reserve_states
  resources :bicycles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
