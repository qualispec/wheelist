Wheelist::Application.routes.draw do

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
  end


  resources :sessions
  resources :cars

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'

end