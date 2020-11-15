Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  resources :pages, only: [:index]
  get 'download_resume', to: "pages#download_resume"
  resources "contacts", only: [:new, :create]
  resources "projects", only: [:show]
end
