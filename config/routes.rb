Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#welcome'
  resources :makers
  resources :home, only: [:welcome]
  resources :listings do
    collection do
      post 'search'
      post 'images_uploading'
    end
  end
end
