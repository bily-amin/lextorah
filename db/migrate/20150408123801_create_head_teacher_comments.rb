class CreateHeadTeacherComments < ActiveRecord::Migration
  def self.up
    create_table :head_teacher_comments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :head_teacher_comments
  end
end
