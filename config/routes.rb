Rails.application.routes.draw do

  resources :post do
    member do
      get 'like'
    end
  end

  root :to => 'post#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
