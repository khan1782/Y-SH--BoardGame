Rails.application.routes.draw do
	resources :games
	resources :users
	resources :categories
	resources :sessions
	root to: "games#index"
end
