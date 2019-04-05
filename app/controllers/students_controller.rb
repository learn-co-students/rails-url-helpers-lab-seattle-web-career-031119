class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    @student.active ? @active = "active" : @active = "inactive"
  end

  def activate
    if @student.active
      @student.update(active: 0)
    else
      @student.update(active: 1)
    end
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
