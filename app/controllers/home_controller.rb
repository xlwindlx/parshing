class HomeController < ApplicationController
  def index
    
  end
  
  def show
    q = params[:q]
    @todos = []
    if q.present?
      @todos = Normal.search(q)
    end
  end
end
