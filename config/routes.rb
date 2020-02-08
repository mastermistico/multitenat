Rails.application.routes.draw do
  Rails.application.routes.draw do
    namespace :api do
     namespace :v1 do
      resources :customers
     end
    end
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
