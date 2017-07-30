Rails.application.routes.draw do
  resources :categories do
    resources :subjects
  end
end
