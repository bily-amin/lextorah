class ReportComment < ActiveRecord::Base
  attr_accessible :comment
  validates_presence_of :comment
  belongs_to :student
  belongs_to :batch
end
