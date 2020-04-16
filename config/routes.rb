Rails.application.routes.draw do
  devise_for :users
  resources :uploads
  root "blogs#index"

  resources :blogs do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
    
  end

  Rails.application.routes.draw do
    resources :blogs do
      get :autocomplete_blog_title, on: :collection # 追加
    end
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
