class Project < ApplicationRecord
  has_many :tasks

  after_initialize :set_defaults

  scope :almost_completed, -> { where('percent_complete >= 75.0')}
  scope :more_work_needed, -> { where('percent_complete < 75.0')}

  private

  def set_defaults
    self.percent_complete ||= 0.0
  end
end
