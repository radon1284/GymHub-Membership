Rails.application.routes.draw do
  devise_for :users
  # get 'pages/home'

  resources :posts
  	devise_scope :user do
	  authenticated :user do
	    root 'pages#home', as: :authenticated_root
	  end

	  unauthenticated do
	    root 'devise/sessions#new', as: :unauthenticated_root
	  end
	end
end
