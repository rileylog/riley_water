# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

WaterRight.create!(number: '13-142', flow_cfs: 5.12, flow_ac_ft: 1860, sole_supply_acres: 620, place_of_use: 'Full Farm', change_application_number: 'a28264', proof_due_date: "2016-06-30")
WaterRight.create!(number: '13-146', flow_cfs: 8.7, flow_ac_ft: 2716.5, sole_supply_acres: 905.5, place_of_use: 'Full Farm', change_application_number: 'a28264', proof_due_date: "2016-06-30")
WaterRight.create!(number: '13-147', flow_cfs: 2.31, flow_ac_ft: 480, sole_supply_acres: 160, place_of_use: 'Full Farm', change_application_number: 'a28264', proof_due_date: "2016-06-30")
WaterRight.create!(number: '13-155', flow_cfs: 7.4, flow_ac_ft: 0, sole_supply_acres: 0, place_of_use: 'Full Farm', change_application_number: 'a28264', proof_due_date: "2016-06-30")
WaterRight.create!(number: '13-198', flow_cfs: 1.11, flow_ac_ft: 475.08, sole_supply_acres: 179.8, place_of_use: 'Sec 19 & 20')
WaterRight.create!(number: '13-1138', flow_cfs: 10, flow_ac_ft: 1920, sole_supply_acres: 640, place_of_use: 'Most Farm', change_application_number: 'a28259', proof_due_date: "2015-05-31")