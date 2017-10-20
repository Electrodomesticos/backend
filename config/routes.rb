Rails.application.routes.draw do
  resources :categories
  resources :registers
  resources :household_appliances
  resources :outlets
  resources :rooms
  resources :domiciles
  resources :users

  #resources :rooms do
  #  resources :outlets
  #end

  get 'rooms/:room_id/outlets', to: 'outlets#show_mine', as: :rooms_outlets
  get 'users/:user_id/rooms', to: 'rooms#my_rooms', as: :user_rooms
  get 'users/:user_id/categories', to: 'categories#my_categories', as: :user_categories
  get 'users/:user_id/household_appliances', to: 'household_appliances#my_appliances', as: :user_appliances
  get 'users/search/:user_name', to: 'users#current_user', as: :current_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

