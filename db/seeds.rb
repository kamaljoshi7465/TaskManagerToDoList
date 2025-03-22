tasks = [
  {
    title: 'Check emails and messages',
    description: 'Review emails and messages on Slack or Teams for any important updates.',
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
    title: 'Fix minor bugs',
    description: 'Work on fixing small, assigned bugs in the project.',
    priority: 3,
    due_date: Date.today + 3.days,
    status: :pending
  },
  {
    title: 'Write unit tests',
    description: 'Write and improve unit tests for recently developed features.',
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

