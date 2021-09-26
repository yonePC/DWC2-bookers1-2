Rails.application.routes.draw do
  root 'homes#top'
  # get 'homes/top'

  resources :books, only:[:index, :show, :create, :edit, :update, :destroy]
end
