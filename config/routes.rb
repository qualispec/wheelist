Wheelist::Application.routes.draw do

  devise_for :users

  root :to => "images#index"

  resources :users do
  	resources :images
  end

  resources :images do
  	collection do
  		get 'search'
  	end

    member do
      post 'like'
    end

    # resources :comments
  end

  resources :comments
  resources :cars

end