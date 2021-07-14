Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'endpoint_1', to: 'application#endpoint_1'
  get 'service_1', to: 'application#service_1'
  get 'service_2', to: 'application#service_2'
end
