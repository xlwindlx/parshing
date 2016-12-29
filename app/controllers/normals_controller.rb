class NormalsController < ApplicationController
  before_action :set_normal, only: [:show, :edit, :update, :destroy]
  # GET /normals
  # GET /normals.json
  def index
    @normals = Normal.all
    @normals = @normals.search('div', params[:divtext]) if params[:divtext]
    @normals = @normals.search('title', params[:titletext]) if params[:titletext]
    @normals = @normals.search('grades', params[:gradestext]) if params[:gradestext]
    @normals = @normals.search('prof', params[:proftext]) if params[:proftext]
    @normals = @normals.search('day', params[:daytext]) if params[:daytext]
    @normals = @normals.search('time', params[:timetext]) if params[:timetext]
    @normals = @normals.search('classroom', params[:classroomtext]) if params[:classroomtext]
  end
  
  # GET /normals/1
  # GET /normals/1.json
  def show
  end

  # GET /normals/new
  def new
    @normal = Normal.new
  end

  # GET /normals/1/edit
  def edit
  end

  # POST /normals
  # POST /normals.json
  def create
    @normal = Normal.new(normal_params)

    respond_to do |format|
      if @normal.save
        format.html { redirect_to @normal, notice: '과목정보가 추가되었습니다.' }
        format.json { render :show, status: :created, location: @normal }
      else
        format.html { render :new }
        format.json { render json: @normal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /normals/1
  # PATCH/PUT /normals/1.json
  def update
    respond_to do |format|
      if @normal.update(normal_params)
        format.html { redirect_to @normal, notice: '과목정보가 변경되었습니다.' }
        format.json { render :show, status: :ok, location: @normal }
      else
        format.html { render :edit }
        format.json { render json: @normal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /normals/1
  # DELETE /normals/1.json
  def destroy
    @normal.destroy
    respond_to do |format|
      format.html { redirect_to normals_url, notice: '과목 정보가 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_normal
      @normal = Normal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def normal_params
      params.require(:normal).permit(:div, :title, :grades, :day, :time, :prof, :classroom)
    end
end
