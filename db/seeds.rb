# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

tasks = [
  {
    title: 'Complete project proposal',
    description: 'Draft and finalize the project proposal for the new client.',
    priority: 2,
    due_date: Date.today + 7.days,
    status: :pending
  },
  {
    title: 'Team meeting',
    description: 'Discuss project milestones and deliverables with the team.',
    priority: 1,
    due_date: Date.today + 2.days,
    status: :in_progress
  },
  {
    title: 'Code review',
    description: 'Review code submissions from team members.',
    priority: 3,
    due_date: Date.today + 3.days,
    status: :pending
  },
  {
    title: 'Client feedback',
    description: 'Gather and analyze feedback from the client on the recent deliverable.',
    priority: 1,
    due_date: Date.today + 5.days,
    status: :completed
  },
  {
    title: 'Update documentation',
    description: 'Revise and update the project documentation to reflect recent changes.',
    priority: 3,
    due_date: Date.today + 10.days,
    status: :pending
  }
]

tasks.each do |task_attributes|
  Task.find_or_create_by!(title: task_attributes[:title]) do |task|
    task.description = task_attributes[:description]
    task.priority = task_attributes[:priority]
    task.due_date = task_attributes[:due_date]
    task.status = task_attributes[:status]
  end
end

