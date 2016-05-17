Rails.application.routes.draw do

  get 'game/trainerTeam'

  get 'game/dex'

  get 'game/trainerIcon'

  get 'game/map'

  get 'pages/bag'

  get 'pages/profile'

  get 'pages/pokedex'

  get 'pages/pokemart'
  post 'pages/pokemart'

  get 'pages/pokemon_team'
  post 'pages/pokemon_team'

  get 'pages/pokemon'

  get 'pages/inventory'
  
  #devise for users
  devise_for :users, :controllers => { registrations: 'users/registrations' }

  #getter for homepage
  get 'welcome/index'

  #resources for trainer
  get 'trainers/index'

  get 'trainers/edit'

  get 'trainers/setup'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  #get '*path' => redirect('/trainers/index')


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
