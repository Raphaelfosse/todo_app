class Task < ActiveRecord::Base
  validates_presence_of :description
  scope :completed, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: false) }
end
