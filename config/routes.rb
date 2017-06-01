Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :customers do
    resources :childs
  end

  resources :products

  resources :sale do 
    resources :line_items
    resources :tickers
  end
end
