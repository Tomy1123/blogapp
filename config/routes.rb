Rails.application.routes.draw do
  resources :uploads
  root "blogs#index"

  resources :blogs do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
