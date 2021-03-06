Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  namespace 'api' do
    namespace 'v1' do
      get 'process_data', to: 'datum#process_data'
    end
  end
end
