class HomeController < ApplicationController
  def index
    
  end
  
  def find_normal
    
    @normals = Normal.all
    @div = @normals.search('div', params[:div]) if params[:div]
    @title = @normals.search('title', params[:title]) if params[:title]
    @grades = @normals.search('grades', params[:grades]) if params[:grades]
    @prof = @normals.search('prof', params[:prof]) if params[:prof]
    @time = @normals.search('time', params[:time]) if params[:time]
    @classroom = @normals.search('classroom', params[:classroom]) if params[:classroom]
    
    # div = params[:div]
    # @divs = []
    # if div.present?
    #   @divs = Normal.search('div', div)
    # end
    
    # title = params[:title]
    # @titles = []
    # if title.present?
    #   @titles = Normal.search('title', title)
    # end
    
    # grades = params[:grades]
    # @Grades = []
    # if grades.present?
    #   @Grades = Normal.search('grades',grades)
    # end
    
    # prof = params[:prof]
    # @profs = []
    # if prof.present?
    #   @profs = Normal.search('prof', prof)
    # end
    
    # time = params[:time]
    # @times = []
    # if time.present?
    #   @times = Normal.search('time', time)
    # end
    
    # classroom = params[:classroom]
    # @classrooms = []
    # if classroom.present?
    #   @classrooms = Normal.search('classroom', classroom)
    # end
  end
  
  def find_prof
    
    @profs = Prof.all
    # @profs = @profs.search('div', params[:div]) if params[:div]
    @profs = @profs.search('title', params[:title]) if params[:title]
    # @profs = @profs.search('grades', params[:grades]) if params[:grades]
    # @profs = @profs.search('proffesion', params[:proffesion]) if params[:proffesion]
    # @profs = @profs.search('time', params[:time]) if params[:time]
    # @profs = @profs.search('classroom', params[:classroom]) if params[:classroom]
    # @profs = @profs.search('grade', params[:grade]) if params[:grade]
    # @profs = @profs.search('subject', params[:subject]) if params[:subject]
    
  end
end
