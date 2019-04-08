Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get "students/:id/activate", to: "students#activate" as: "active_student"
end
