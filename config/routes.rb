Rails.application.routes.draw do
    scope "", defaults: {format: :json} do
        resources :imc, only: [:create, :show]
    end
end
