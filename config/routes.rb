Rails.application.routes.draw do
  get "training_sessions/index"
  get "training_sessions/new"
  get "training_sessions/create"
  get "training_sessions/edit"
  get "training_sessions/update"
  get "training_sessions/destroy"
  
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "training_sessions#index"
  resources :training_sessions

end
