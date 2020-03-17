Rails.application.routes.draw do
  resources :uploads
  root "blogs#index"

  resources :blogs do
    resources :comments
  end

  resources :spots
  get '/spots/:id/likes', to: 'spots#likes'
  # resources :spots do
  #   member do
  #     get :likes
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
