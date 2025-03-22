# Task Management Application

This is a simple Task Management application built with **Ruby on Rails**. It allows users to create, update, delete, and sort tasks by priority or due date. Tasks can also be marked as completed.

## Features
- Create, update, and delete tasks
- Sort tasks by **Due Date** or **Priority**
- Change task **status** dynamically
- Display task **completion progress**
- Validate task inputs
- Responsive UI using **Tailwind CSS**

## Installation
### Prerequisites
Ensure you have the following installed:
- **Ruby** (3.3.6)
- **Rails** (8.0.2)
- **Node.js** & **Yarn**
- **PostgreSQL**

### Clone the Repository
```sh
git clone https://github.com/kamaljoshi7465/TaskManagerToDoList.git
cd TaskManagerToDoList
```

### Install Dependencies
```sh
bundle install
rails tailwindcss:install
```

### Database Setup
```sh
rails db:create
rails db:migrate
rails db:seed  # (Optional: To add sample data)
```

### Start the Server
```sh
rails server
```
The application will be available at: **http://localhost:3000**

## Usage
1. Click **"New Task"** to create a new task.
2. Sort tasks by selecting **"Due Date"** or **"Priority"** from the dropdown.
3. Update task **status** using the dropdown in the task list.
4. Click **"Edit"** to modify a task.
5. Click **"Delete"** to remove a task.

## Task Statuses
- **Pending** (Default)
- **In Progress**
- **Completed**

## Validations
- **Title** is required
- **Priority** must be 1 (Low), 2 (Medium), or 3 (High)
- **Due Date** cannot be in the past

## Troubleshooting
### Tailwind CSS Not Working?
- Run `rails tailwindcss:build`
- Restart the server: `rails server`

## Future Improvements
- Implement user authentication
- Add due date reminders
- Integrate notifications for task updates
