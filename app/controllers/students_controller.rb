class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show

  end

  def activate_student
    @student = set_student
    if @student.active == false
      @student.active = true
    elsif @student.active == true
      @student.active = false
    end
    @student.save
    redirect_to "/students/#{@student.id}"
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
