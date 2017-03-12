Rails.application.routes.draw do
  get "students/login" => "students/login.html.erb"
  get "students/index" => "students#index"
  post "students/home" => "students#home"
  get "students/grades" => "students/grades.html.erb"
  get "students/classmates" => "students/classmates.html.erb"

  get "teachers/login"  => "teachers/login.html.erb"
  get "teachers/index"  => "teachers#index"
  post "teachers/home"  => "teachers#home"
  get "teachers/grades" => "teachers/grades.html.erb"
  
  resources :teacher_advise_classes
  resources :teacher_subject_sections
  resources :student_year_sections
  resources :student_grade_subjects
  resources :subjects
  resources :class_sections
  resources :announcements
  resources :teachers
  resources :subjects
  resources :students
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
