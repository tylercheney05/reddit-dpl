Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :controllerName
  # custom route, http verb '/whatever', to: 'controller#action',
  # root '' where to go on initial landing
  root 'subs#index'

  # get '/subs', to: 'subs#index'
  # get '/sub', to: 'subs#show'
  # get '/subs/:id', to: 'subs#edit'

  resources :subs do
    resources :topics 
  end

  # resources :topics do
  #   resources :comments
  # end

  # resources :comments do
  #   resources :likes
  # end

end
