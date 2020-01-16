# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
User.destroy_all
Project.destroy_all

gino = User.create(username: "Gino", password_digest: "12345")
miguel = User.create(username: "Miguel", password_digest: "12345")

project_a = Project.create(title: "Test Title", synopsis: "We Work", owner_id: miguel.id, deadline: "1991-01-06")
project_b = Project.create(title: "Test Work", synopsis: "We Eat", owner_id: miguel.id, deadline: "1991-01-06")


Task.create(description: "Whats Up", complete: false, user_id: miguel.id, project_id: project_a.id)
Task.create(description: "Whats Left", complete: false, user_id: miguel.id, project_id: project_a.id)
Task.create(description: "Whats Down", complete: false, user_id: gino.id, project_id: project_a.id)
