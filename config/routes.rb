Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users

  resources :meds do
    collection do
      get "daily_count", defaults: { format: :json }
    end
  end

  resources :recipients

  get "home/about"
  get "home/newPatient"
  get "home/patientData"
  get "home/registerPatient"

  # get "home/index"
  root "home#index"
end
