class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def activate
    @student.active ? @student.active = false : @student.active = true
    @student.save
    redirect_to @student
    # ^ crazy quick way
    #redirect_to student_path(@student) - good rails way
    #redirect_to student_path(@student.id) - other rails way
    #redirect_to "/students/#{@student.id} - sinatra way
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
