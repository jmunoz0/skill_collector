Rails.application.routes.draw do

  root "positions#index"


  # Routes for the Position resource:
  # CREATE
  get "/positions/new", :controller => "positions", :action => "new"
  post "/create_position", :controller => "positions", :action => "create"

  # READ
  get "/positions", :controller => "positions", :action => "index"
  # get "/positions/:id", :controller => "positions", :action => "show"

  # UPDATE
  # get "/positions/:id/edit", :controller => "positions", :action => "edit"
  # post "/update_position/:id", :controller => "positions", :action => "update"

  # DELETE
  get "/delete_position/:id", :controller => "positions", :action => "destroy"

  get "/all_skills", :controller => "positions", :action => "all_skills"
  get "/role_interest", :controller => "positions", :action => "role_interest"
  # get "/compare_skill", :controller => "positions", :action => "compare_skill"



  #------------------------------

  # Routes for the Task resource:
  # CREATE
  # get "/tasks/new", :controller => "tasks", :action => "new"
  # post "/create_task", :controller => "tasks", :action => "create"
  #
  # # READ
  # get "/tasks", :controller => "tasks", :action => "index"
  # get "/tasks/:id", :controller => "tasks", :action => "show"
  #
  # # UPDATE
  # get "/tasks/:id/edit", :controller => "tasks", :action => "edit"
  # post "/update_task/:id", :controller => "tasks", :action => "update"
  #
  # # DELETE
  # get "/delete_task/:id", :controller => "tasks", :action => "destroy"
  #------------------------------

  # Routes for the Skill resource:
  # CREATE
  # get "/skills/new", :controller => "skills", :action => "new"
  # post "/create_skill", :controller => "skills", :action => "create"
  #
  # # READ
  # get "/skills", :controller => "skills", :action => "index"
  # get "/skills/:id", :controller => "skills", :action => "show"
  #
  # # UPDATE
  # get "/skills/:id/edit", :controller => "skills", :action => "edit"
  # post "/update_skill/:id", :controller => "skills", :action => "update"
  #
  # # DELETE
  # get "/delete_skill/:id", :controller => "skills", :action => "destroy"
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  # get "/roles/new", :controller => "roles", :action => "new"
  # post "/create_role", :controller => "roles", :action => "create"
  #
  # # READ
  # get "/roles", :controller => "roles", :action => "index"
  # get "/roles/:id", :controller => "roles", :action => "show"
  get "/compare", :controller => "roles", :action => "show"
  # UPDATE
  # get "/roles/:id/edit", :controller => "roles", :action => "edit"
  # post "/update_role/:id", :controller => "roles", :action => "update"
  #
  # # DELETE
  # get "/delete_role/:id", :controller => "roles", :action => "destroy"
  #------------------------------

  devise_for :users

  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"
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
