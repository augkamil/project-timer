class TimesheetElement
  include Mongoid::Document

  field :start_time, type: Time
  field :end_time, type: Time

  belongs_to :user
  belongs_to :project

  validates_presence_of :start_time
end
