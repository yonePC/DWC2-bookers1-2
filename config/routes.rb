Rails.application.routes.draw do
  root 'homes#top'
  # get 'homes/top'

  resources :books, only:[:index, :show, :create, :update, :destroy]
end
