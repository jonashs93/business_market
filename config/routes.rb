Rails.application.routes.draw do
  namespace :api do
    api_version(module: 'V1', path: { value: 'v1' }, default: true) do
      resources :customers, only: :create
    end
  end
end
