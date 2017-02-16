Rails.application.routes.draw do

	resources :games do
    resources :user_games, only: [:create]
    resources :comments, only: [:create]
	end

	resources :users
	resources :categories
  resources :friendships, only: [:create, :update, :destroy]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

	root to: "games#index"
end
