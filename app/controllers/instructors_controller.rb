class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  # GET /instructors
  # GET /instructors.json
  def index
    @instructors = Instructor.all
     render json:@instructors
  end

  # GET /instructors/1
  # GET /instructors/1.json
  def show
    render json:@instructor
  end

  # GET /instructors/new
  def new
    @instructor = Instructor.new
  end

  # GET /instructors/1/edit
  def edit
  end

  # POST /instructors
  # POST /instructors.json
  def create
    @instructor = Instructor.new(instructor_params)
      if @instructor.save
        render json: @instructor, status: :created, location: @instructor
    else
      render json: @instructor.errors, status: :unprocessable_entity
    
    end
  end

  # PATCH/PUT /instructors/1
  # PATCH/PUT /instructors/1.json
  def update
      if @instructor.update(instructor_params)
         render json: @instructor
    else
      render json: @instructor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instructors/1
  # DELETE /instructors/1.json
  def destroy
    @instructor.destroy
    render json: @instructor
    end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_params
      params.require(:instructor).permit(:name, :email, :bio)
    end
end
