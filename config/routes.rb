Rails.application.routes.draw do
  resources :ac_tenants
  Rails.application.routes.draw do
  resources :ac_tenants
    namespace :api do
     namespace :v1 do
      resources :customers, :ac_tenants
     end
    end
   end
end
