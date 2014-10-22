Rails.application.routes.draw do
  resources :dois do
    resources :urls, shallow: true
  end

  get 'query', to: 'doi#show'

  root 'home#index'

end
