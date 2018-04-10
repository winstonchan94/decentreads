Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :books, only: [:create, :show, :index]
    resources :shelves, only: [:create, :show, :index]
  end

  root "static_pages#root"

end
