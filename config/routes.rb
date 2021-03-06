Rails.application.routes.draw do
  # get 'messages/index' 

  # root GET  /                   messages#index
  root 'messages#index'

  # messages POST /messages(.:format) messages#createを作る
  # resources :messages, only:[:create]
  
  # 下記のX以外を作る
  # Prefix Verb URI     Pattern                     Controller#Action
  # messages    GET    /messages(.:format)          messages#index    X
  #             POST   /messages(.:format)          messages#create
  # new_message GET    /messages/new(.:format)      messages#new      X
  # edit_message GET   /messages/:id/edit(.:format) messages#edit
  # message     GET    /messages/:id(.:format)      messages#show
  #             PATCH  /messages/:id(.:format)      messages#update
  #             PUT    /messages/:id(.:format)      messages#update
  #             DELETE /messages/:id(.:format)      messages#destroy
  resources :messages , except: [:index, :new]
             
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
