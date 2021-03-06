Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#notwelcome'
  resources :makers
  resources :home, only: [:welcome, :notwelcome]
  resources :listings do
    collection do
      post 'search'
      post 'images_uploading'
    end
  end
end
