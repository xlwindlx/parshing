class HomeController < ApplicationController
  def index
    # 2개의 테이블에서 해당 시간(요일&시간)의 값이 있는지 조사
    @proftable = Prof.all
    @normaltable = Normal.all
    # @proftable = @proftable.find()
  end
    # heroku deploy 안됨
    
    # table cell button - td에 onclick 함수로 JS구축
    # textbox 사이즈 조절
    # 과목 추가하기 - Create Normal 텍스트 변경
    # 텍스트박스에만 text-align:center; 주기
    # 테이블에 width 주지말고 thead에 colgroup 만들어서 col에 width 각각 따로 부여
end
