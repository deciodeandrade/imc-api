Rails.application.routes.draw do
    scope "", defaults: {format: :json} do
        resources :imc, only: [:create, :show]
    end

    resources :users, param: :_username
    post '/auth/login', to: 'authentication#login'
    get '/*a', to: 'application#not_found'
end
