Rails.application.routes.draw do
  get 'users/new'

  #get 'static_pages/home'
  #get 'static_pages/help'
  #get 'static_pages/about'
  #get 'static_pages/membership'
  #get 'static_pages/miscellaneous'
  #get 'static_pages/mixers'
  #get 'static_pages/reviews'
  #get 'static_pages/speakers'
  #get 'static_pages/music'
   root 'static_pages#home'
  
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/speakers', to: 'static_pages#speakers'
  get  '/reviews',    to: 'static_pages#reviews'
  get  '/music',   to: 'static_pages#music'
  get  '/mixers', to: 'static_pages#mixers'
  get '/miscellaneous',    to: 'static_pages#miscellaneous'
  get  '/membership',   to: 'static_pages#membership'
  
  #root 'static_pages#help'
  #root 'static_pages#about'
  #root 'static_pages#membership'
  #root 'static_pages#miscellaneous'
  #root 'static_pages#mixers'
  #root 'static_pages#reviews'
  #root 'static_pages#speakers'
  #root 'static_pages#music'
  
  
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
