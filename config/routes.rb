Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  get 'tags/:tag', to: 'posts#index', as: :tag

end
