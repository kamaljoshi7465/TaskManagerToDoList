class Task < ApplicationRecord
  enum :status, { pending: 0, in_progress: 1, completed: 2 }

  validates :title, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
  validates :priority, inclusion: { in: [1, 2, 3] }
end
