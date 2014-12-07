Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts

  get 'tags/:tag', to: 'posts#index', as: :tag

end
