Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root "lists#index"
  resources :movies do
    # resources :reviews, only: [:new, :create]
  end

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end


  # Defines the root path route ("/")

end
