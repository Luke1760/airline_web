Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :airlines, param: slug
      resources :reviews, only: [:create, :destroy]
    end
  end
  get '*path', to: 'pages#index', via :all

  # '*path' https://stackoverflow.com/questions/4132039/rails-redirect-all-unknown-routes-to-root-url
  # Routing from the Outside https://ihower.tw/rails/routing.html#sec1
end