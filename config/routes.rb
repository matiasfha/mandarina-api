Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  scope '/api/v1' do 
    resources :customers do
      resources :childs
    end

    resources :products
    resources :providers

    resources :sale do 
      resources :line_items
      resources :tickers
    end
  end
end
