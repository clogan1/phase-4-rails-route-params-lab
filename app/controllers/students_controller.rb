class StudentsController < ApplicationController

  def index
    students = Student.where('first_name = ?', params[:name]).or(Student.where('last_name = ?', params[:name]))
    render json: students
  end

  def by_id
    student = Student.find(params[:id])
    render json: student
  end

end


