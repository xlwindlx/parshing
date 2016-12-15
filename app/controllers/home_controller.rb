class HomeController < ApplicationController
  def index
    
  end
  
  def find_normal
    div = params[:div]
    @divs = []
    if div.present?
      @divs = Normal.search('div', div)
    end
    
    title = params[:title]
    @titles = []
    if title.present?
      @titles = Normal.search('title', title)
    end
    
    grades = params[:grades]
    @Grades = []
    if grades.present?
      @Grades = Normal.search('grades',grades)
    end
    
    prof = params[:prof]
    @profs = []
    if prof.present?
      @profs = Normal.search('prof', prof)
    end
    
    time = params[:time]
    @times = []
    if time.present?
      @times = Normal.search('time', time)
    end
    
    classroom = params[:classroom]
    @classrooms = []
    if classroom.present?
      @classrooms = Normal.search('classroom', classroom)
    end
  end
  
  def find_prof
    div = params[:div]
    @divs = []
    if div.present?
      @divs = Prof.search(div)
    end
  end
end
