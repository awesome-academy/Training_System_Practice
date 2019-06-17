# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email:"supervisor1@gmail.com",
             password: "123123",
             password_confirmation: "123123",
             supervisor: true)
User.create!(email:"supervisor2@gmail.com",
             password: "123123",
             password_confirmation: "123123",
             supervisor: true)
User.create!(email:"supervisor3@gmail.com",
             password: "123123",
             password_confirmation: "123123",
             supervisor: true)
User.create!(email:"user1@gmail.com",
             password: "123123",
             password_confirmation: "123123")
User.create!(email:"user2@gmail.com",
             password: "123123",
             password_confirmation: "123123")
User.create!(email:"user3@gmail.com",
             password: "123123",
             password_confirmation: "123123")
Course.create!(name:"Java",
             detail: "abcxyz",
             start_date: Date.parse("2014-1-1"),
             end_date: Date.parse("2014-1-1"),
             status: "progress")
Course.create!(name:"Ruby",
             detail: "abcxyz",
             start_date: Date.parse("2014-1-1"),
             end_date: Date.parse("2014-1-1"),
             status: "Done")
Course.create!(name:".NET",
             detail: "abcxyz",
             start_date: Date.parse("2014-1-1"),
             end_date: Date.parse("2014-1-1"),
             status: "Done")
UserCourse.create!(user_id: 4,
                   course_id: 2)
UserCourse.create!(user_id: 4,
                   course_id: 1)
UserCourse.create!(user_id: 4,
                   course_id: 3)
UserCourse.create!(user_id: 5,
                   course_id: 2)
UserCourse.create!(user_id: 6,
                   course_id: 2)
Subject.create!(name: "Toan",
                description: "Hoc toan di nao",
                detail: "Hoc van vui hon",
                start_date: Date.parse("2014-1-1"),
                end_date: Date.parse("2014-1-2"),
                status: "New",
                course_id: 2)
Subject.create!(name: "Ly",
                description: "Hoc Ly di nao",
                detail: "Hoc Hoa vui hon",
                start_date: Date.parse("2014-1-1"),
                end_date: Date.parse("2014-1-2"),
                status: "Learning",
                course_id: 2)
Subject.create!(name: "Hoa",
                description: "Hoc Hoa di nao",
                detail: "Hoc Su vui hon",
                start_date: Date.parse("2014-1-1"),
                end_date: Date.parse("2014-1-2"),
                status: "New",
                course_id: 2)
Task.create!(status: "Phan 1 - new",
             subject_id: 1)
Task.create!(status: "Phan 2 - new",
             subject_id: 1)
Task.create!(status: "Phan 3 - new",
             subject_id: 1)