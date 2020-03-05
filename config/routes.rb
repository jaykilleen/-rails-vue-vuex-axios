Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, :path => "", :defaults => {:format => :json}, constraints: { format: 'json' } do
    namespace :v1 do
      resources :posts
    end
  end
  root 'pages#index'
end
