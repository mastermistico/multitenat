Rails.application.routes.draw do
  namespace :api do
     namespace :v1 do
      resources :customers, :ac_tenants
     end 
  end
end
