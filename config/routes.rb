Rails.application.routes.draw do
  devise_for :users

  root "staticpages#home"

  get '/'             =>  'staticpages#home',     as: 'home'
  get '/myfavorites'  =>  'staticpages#myfavorites', as: 'myfavorites'

  get '/input'        =>  'staticpages#input',    as: 'input'

  # JSON endpoints
  get '/bikeshares'   =>  'bikeshares#index',     as: 'bikeshares'
  get '/buses'        =>  'buses#index',          as: 'buses'
  get '/trains'       =>  'trains#index',         as: 'trains'
  get '/ubers'        =>  'ubers#index',          as: 'ubers'
  get '/weather'      =>  'weather#index',        as: 'weathers'
  # get '/zipcars'      =>  'zipcars#index',        as: 'zipcars'

  resources :favorites, only: [:create, :index]
  

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
