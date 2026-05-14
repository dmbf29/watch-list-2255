Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :create] do
    resources :bookmarks, only: [:new, :create]
  end
end
