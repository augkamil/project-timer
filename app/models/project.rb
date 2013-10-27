class Project
  include Mongoid::Document

  field :name, type: String
  field :client, type: String

  has_and_belongs_to_many :users

  validates_presence_of :name
  validates_presence_of :client
  validates_uniqueness_of :name
end
