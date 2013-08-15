Wheelist::Application.routes.draw do

  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  root :to => "images#index"

  resources :users do
  	resources :images
  end

  resources :images do
  	# collection do
  	# 	get 'search'
  	# end

    member do
      post 'like'
      delete 'unlike'
    end

    # resources :comments
  end

  resources :comments

end