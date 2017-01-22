# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "这个种子档会自动建立一个admin账号，并且创建10个public jobs、10个hidden jobs."

create_account = User.create([email: 'sunhemin@outlook.com', password: '20161226pm', password_confirmation: '20161226pm', is_admin: 'true'])
puts "Admin account created."

create_jobs = for i in 1...10 do
  Job.create!([title: "Job #{i}", description: "这是第 #{i}个public job", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
  #sleep rand(1..5)
end
puts "10 public jobs created."

create_jobs = for i in 1...10 do
  Job.create!([title: "Job #{i+10}", description: "这是第 #{i+10}个public job", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "true"])
  #sleep rand(1..5)
end
puts "10 hidden jobs created."
