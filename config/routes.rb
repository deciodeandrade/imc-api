Rails.application.routes.draw do
    scope "/api", defaults: {format: :json} do
        resources :vacas, only: [:create, :show]
    end
end
