class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    render json:@students
  end

  # GET /students/1
  # GET /students/1.json
  def show
    render json:@student
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
      if @student.save
        render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
      if @student.update(student_params)
         render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
     
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    render json:@student
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:name, :email, :major, course_ids:[])
  end
end
