
Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :customers do
        resources :orders do
          resources :details
        end
      end
      resources :owners do
        resources :foods        
      end
      resources :categories do
        resources :foods
      end      
    end
  end
end


# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"