Rails.application.routes.draw do
  resources :sshconnection do
    collection do
      get :index
      get :connect
      get :show
    end
  end
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
