Rails.application.routes.draw do

  resources :authors, only: [:show] do
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  #this makes the homepage open the posts/index route, but without changing the homepage url
  root 'posts#index'
end
