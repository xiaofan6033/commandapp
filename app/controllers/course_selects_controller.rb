class CourseSelectsController < ApplicationController
  before_action :set_course_select, only: [:show, :edit, :update, :destroy]

  # GET /course_selects
  # GET /course_selects.json
  def index
    @course_selects = CourseSelect.all
  end

  # GET /course_selects/1
  # GET /course_selects/1.json
  def show
  end

  # GET /course_selects/new
  def new
    @course_select = CourseSelect.new
  end

  # GET /course_selects/1/edit
  def edit
  end

  # POST /course_selects
  # POST /course_selects.json
  def create
    @course_select = CourseSelect.new(course_select_params)

    respond_to do |format|
      if @course_select.save
        format.html { redirect_to @course_select, notice: 'Course select was successfully created.' }
        format.json { render :show, status: :created, location: @course_select }
      else
        format.html { render :new }
        format.json { render json: @course_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_selects/1
  # PATCH/PUT /course_selects/1.json
  def update
    respond_to do |format|
      if @course_select.update(course_select_params)
        format.html { redirect_to @course_select, notice: 'Course select was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_select }
      else
        format.html { render :edit }
        format.json { render json: @course_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_selects/1
  # DELETE /course_selects/1.json
  def destroy
    @course_select.destroy
    respond_to do |format|
      format.html { redirect_to course_selects_url, notice: 'Course select was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_select
      @course_select = CourseSelect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_select_params
      params.require(:course_select).permit(:num, :name, :score, :tutor)
    end
end
