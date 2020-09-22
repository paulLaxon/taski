class Task < ApplicationRecord
  belongs_to :project

  after_save :update_perdent_complete if :mark_completed?

  scope :completed, -> { where(completed:) }
  private

  def mark_completed?
    self.completed
  end

  def update_percent_complete
    project = Project.find(self.project_id)
    count_of_completed_tasks = project.tasks.completed.count
    project.update!(percent_complete: Counter.calculate_percent_complete(count_of_completed, count_of_total))
  end
end
