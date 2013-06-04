Dxypherblog::Application.routes.draw do
  authenticated :user do
    root to: 'home#index'
  end
  root to: 'home#index'
  devise_for :users

  namespace :admin do
    resources :articles, :categories
  end

  resources :categories
  match "/blog/filter" => "articles#filter_by_category"
  match "/blog" => "articles#index"
  resources :articles do
    resources :comments
  end
end
