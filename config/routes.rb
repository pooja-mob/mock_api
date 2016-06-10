Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  api_version(module: 'V1', path: { value: 'v1' }) do
    resources :selfiy_account, only: [] do
      collection do
        post 'user_status'
      end
    end
  end
    post 'users'              => 'users#create'
    post 'users/:uuid/verify' => 'users#verify'
    post 'selfie_account/user_status' => 'selfie_account#user_status'
    post 'otps/:uuid/verify' => 'otp#verify'
    get 'accounts' => "accounts#check"
    get 'transactions' => "transactions"
    post 'selfie_account/branches' => "selfie_account#branches"
    post 'selfie_account/create' => "selfie_account#create"
    post 'selfie_account/verify_otp' => "selfie_account#verify_otp"
    post'selfie_account/upload_selfie' => "selfie_account#upload_selfie"
    post 'selfie_account/upload_aadhaar' => "selfie_account#upload_aadhaar"
    post 'selfie_account/upload_aadhaar_address'=> "selfie_account#upload_aadhaar_address"
    post 'selfie_account/upload_pan_image' => "selfie_account#upload_pan_image"
    post 'selfie_account/upload_pan_details' => "selfie_account#upload_pan_details"
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
