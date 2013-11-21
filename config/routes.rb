MedcostSaver::Application.routes.draw do
  # Routes for the Location resource:
  root 'procedures#index'
  # CREATE
  get '/locations/new', controller: 'locations', action: 'new', as: 'new_location'
  post '/locations', controller: 'locations', action: 'create', as: 'locations'

  # READ
  get '/locations', controller: 'locations', action: 'index'
  get '/locations/:id', controller: 'locations', action: 'show', as: 'location'

  # UPDATE
  get '/locations/:id/edit', controller: 'locations', action: 'edit', as: 'edit_location'
  patch '/locations/:id', controller: 'locations', action: 'update'

  # DELETE
  delete '/locations/:id', controller: 'locations', action: 'destroy'
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get '/companies/new', controller: 'companies', action: 'new', as: 'new_company'
  post '/companies', controller: 'companies', action: 'create', as: 'companies'

  # READ
  get '/companies', controller: 'companies', action: 'index'
  get '/companies/:id', controller: 'companies', action: 'show', as: 'company'

  # UPDATE
  get '/companies/:id/edit', controller: 'companies', action: 'edit', as: 'edit_company'
  patch '/companies/:id', controller: 'companies', action: 'update'

  # DELETE
  delete '/companies/:id', controller: 'companies', action: 'destroy'
  #------------------------------

  # Routes for the Offering resource:
  # CREATE
  get '/offerings/new', controller: 'offerings', action: 'new', as: 'new_offering'
  post '/offerings', controller: 'offerings', action: 'create', as: 'offerings'

  # READ
  get '/offerings', controller: 'offerings', action: 'index'
  get '/offerings/:id', controller: 'offerings', action: 'show', as: 'offering'

  # UPDATE
  get '/offerings/:id/edit', controller: 'offerings', action: 'edit', as: 'edit_offering'
  patch '/offerings/:id', controller: 'offerings', action: 'update'

  # DELETE
  delete '/offerings/:id', controller: 'offerings', action: 'destroy'
  #------------------------------

  # Routes for the Procedure resource:
  # CREATE
  get '/procedures/new', controller: 'procedures', action: 'new', as: 'new_procedure'
  post '/procedures', controller: 'procedures', action: 'create', as: 'procedures'

  # READ
  get '/procedures', controller: 'procedures', action: 'index'
  get '/procedures/:id', controller: 'procedures', action: 'show', as: 'procedure'

  # UPDATE
  get '/procedures/:id/edit', controller: 'procedures', action: 'edit', as: 'edit_procedure'
  patch '/procedures/:id', controller: 'procedures', action: 'update'

  # DELETE
  delete '/procedures/:id', controller: 'procedures', action: 'destroy'
  #------------------------------

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
