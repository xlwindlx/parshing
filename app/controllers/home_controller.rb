class HomeController < ApplicationController
  def index
    # 2개의 테이블에서 해당 시간(요일,시간)의 값이 있는지 조사
    @proftable = Prof.all
    @normaltable = Normal.all
    # @proftable = @proftable.find()
  end

  def find_normal

    @normals = Normal.all
    @normals = @normals.search('div', params[:divtext]) if params[:divtext]
    @normals = @normals.search('title', params[:titletext]) if params[:titletext]
    @normals = @normals.search('grades', params[:gradestext]) if params[:gradestext]
    @normals = @normals.search('prof', params[:proftext]) if params[:proftext]
    @normals = @normals.search('time', params[:timetext]) if params[:timetext]
    @normals = @normals.search('classroom', params[:classroomtext]) if params[:classroomtext]

  end

  def find_prof

    @profs = Prof.all

    @profs = @profs.search('div', params[:divtext]) if params[:divtext]
    @profs = @profs.search('title', params[:titletext]) if params[:title]
    @profs = @profs.search('grades', params[:gradestext]) if params[:grades]
    @profs = @profs.search('proffesion', params[:proftext]) if params[:proffesion]
    @profs = @profs.search('time', params[:timetext]) if params[:time]
    @profs = @profs.search('classroom', params[:classroomtext]) if params[:classroom]
    @profs = @profs.search('grade', params[:gradetext]) if params[:grade]
    @profs = @profs.search('subject', params[:subjecttext]) if params[:subject]
    
  end
end
