class CreateReportComments < ActiveRecord::Migration
  def self.up
    create_table :report_comments do |t|
      t.text :comment
      t.integer :student_id
      t.integer :batch_id
      t.timestamps
    end
  end

  def self.down
    drop_table :report_comments
  end
end
