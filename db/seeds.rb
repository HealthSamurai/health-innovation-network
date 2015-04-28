# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

email = 'admin@hl7.ru'
password = 'password'
unless User.find_by_email(email)
  User.create!(email: email, password: password, admin: true)
end

unless MemberType.count < 1
  MemberType.create!(title: 'Advisor')
end

unless MemberInterest.count < 1
  MemberInterest.create!(title: 'Innovation')
end
