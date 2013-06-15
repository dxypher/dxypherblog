Dxypherblog::Application.routes.draw do
  authenticated :user do
    root to: 'home#index', via: :get
  end
  root to: 'home#index', via: :get
  post 'home/contact', controller: :home, action: :contact
  devise_for :users

  namespace :admin do
    resources :articles, :categories
  end

  resources :categories, only: [:index]
  match "/blog/filter" => "articles#filter_by_category"
  match "/blog" => "articles#index"
  resources :articles, only: [:index, :show] do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  match "/comment/signup" => "registrations#new"
end
