Rails.application.routes.draw do
  get 'sections/show_s1'

  get 'sections/update_s1'

  get 'sections/show_s2'

  get 'sections/update_s2'

  get 'lists/show'

  get 'people/new'
  get 'options/new'
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'people#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
    resources :questions do
      resources :options
    end

    resources :people do
      get 'sections/1' => 'sections#show_s1'
      post 'sections/1' => 'sections#update_s1'
      get 'sections/2' => 'sections#show_s2'
      post 'sections/2' => 'sections#update_s2'
      get 'sections/3' => 'sections#show_s3'
      post 'sections/3' => 'sections#update_s3'
      get 'sections/4' => 'sections#show_s4'
      post 'sections/4' => 'sections#update_s4'
      get 'sections/survey_complete' => 'sections#show_survey_complete'
    end

    resources :answers
     
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
