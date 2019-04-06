Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students

  get '/students/:id/activate', to: 'students#class_toggle_active', as: 'activate_student'

  #   Student.set_student
  #   @student.toggle :active
  #   redirect to '/student/:id'
  # end

end
