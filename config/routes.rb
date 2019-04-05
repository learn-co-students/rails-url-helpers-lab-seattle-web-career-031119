Rails.application.routes.draw do
  resources :students, only: [:index, :show, :edit]
  get '/activate/:id', to: 'students#activate', as: 'activate_student'
end
