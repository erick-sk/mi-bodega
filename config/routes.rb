Rails.application.routes.draw do
  # Root
  root "dashboard#index"

  # Products
  resources :products do
    member do
      get :new_movement
      post :create_movement
    end
  end
end
