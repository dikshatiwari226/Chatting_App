Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'conversations#index'
  resources :personal_messages, only: [:create]
	resources :conversations, only: [:index, :show]
	resources :users, only: [:index]
	resources :personal_messages, only: [:new, :create]

	mount ActionCable.server => '/cable'
end
