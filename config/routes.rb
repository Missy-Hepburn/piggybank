Rails.application.routes.draw do
  resources :transactions
  resources :monthlyicons
  resources :weeklyicons
  get 'static_pages/expenses'
      
  resources :budgets
  resources :pictures
  resources :icons
  get 'profiles/show'

  resources :updates
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  
  authenticated :user do
  root 'profiles#show', as: :authenticated_root
  end
  
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/whataboutit'

  get 'static_pages/blog'
  
  get '/home' => 'static_pages#home'
  
  get '/whataboutit' => 'static_pages#whataboutit'
  
  get '/blog' => 'static_pages#blog'
  
  get '/expenses' => 'static_pages#expenses'
  
  get '/profile/:userid' => 'profiles#show', as: 'profile'
  
  get '/budget/:userid' => 'budgets#index'
  
  get '/savings/:userid' => 'pictures#index' 
  
  get '/expenses/:userid' => 'transactions#index'
  

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
