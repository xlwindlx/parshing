class CreateProfs < ActiveRecord::Migration
  def change
    create_table :profs do |t|
      t.string :div         #이수구분
      t.string :title       #과목명
      t.integer :grades     #학점
      t.integer :grade      #학년
      t.string :subject     #전공명
      t.string :proffesion  #교강사
      t.string :day         #요일
      t.string :time        #시간
      t.string :classroom   #강의실

      t.timestamps null: false
    end
  end
end
