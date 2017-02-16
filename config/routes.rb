Rails.application.routes.draw do
	resources :games do
		resources :comments, only: [:create]
	end
	resources :users
	resources :categories
	resources :sessions
	root to: "games#index"
end
