class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
    # binding.pry
  end

  def class_toggle_active
    # binding.pry
    @student = set_student
    @student.toggle :active
    @student.save
    # binding.pry
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      Student.find(params[:id])
    end
end
