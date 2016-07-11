Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  get '/home/welcome' => 'home#welcome', :as => 'welcome'
  # match '/users/:id/show', :to => 'users#show', :as => :user, :via => :get
  resources :users do #will return get_regions as action(method)
    member do
      get '/users/:id' => 'users#show', :as => 'user'
    end
    collection do
      get 'get_regions'
      get 'get_cities'
    end
  end

  root 'home#index'
  # get 'users/get_regions/:country_id' => 'users#get_regions' #will return get_regions as id

  # root 'home#index'
  # get 'persons/profile', as: 'user_root'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
