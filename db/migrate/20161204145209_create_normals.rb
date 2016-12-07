class CreateNormals < ActiveRecord::Migration
  def change
    create_table :normals do |t|
      t.string :div         #이수구분
      t.string :title       #과목명
      t.integer :grades     #학점
      t.string :day         #요일
      t.string :time        #시간
      t.string :prof        #교강사명
      t.string :classroom   #강의실

      t.timestamps null: false
    end
  end
end
