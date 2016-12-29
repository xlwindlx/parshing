class HomeController < ApplicationController
  def index
    # 2개의 테이블에서 해당 시간(요일&시간)의 값이 있는지 조사
    @proftable = Prof.all
    @normaltable = Normal.all
    # @proftable = @proftable.find()
  end
    # 전공/교양 모두 JS파일이 적용 안됨
    # 전공의 경우 검색조건마다 params오류
    # heroku deploy 안됨
    # 요일col 전공만 적용 안됨
    
    # table cell button
end
