# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

email = 'healthinnovationnetwork2@gmail.com'
password = 'password'
unless User.find_by_email(email)
  User
    .create!(email: email, password: password, admin: true)
    .confirm!
end

if MemberType.count < 1
  MemberType.create!(title: 'Advisor')
end

if EngagementInterest.count < 1
  [ "Piloting/Clinical Testing",
    "Innovation",
    "Business Development",
    "Technical Development",
    "Advising/Mentoring",
    "Funding",
    "Product/Service Provider"
  ].each do |title|
    EngagementInterest.create(title: title)
  end
end

if InterestArea.count < 1
  [
    "Digital Health, Remote Monitoring, Connected Health",
    "Lifestyle and Wellness, Prevention",
    "Care Navigation",
    "Behavioral and Mental Health",
    "Medication Management",
    "Social Engagement, Patient Engagement",
    "Population Management",
    "Chronic Disease Management ",
    "EMR, Health IT",
    "Analytics, Artificial Intelligence, Machine Learning",
    "Palliative care, End of Life Care",
    "Patient Safety, Infection Prevention",
    "Scheduling, Revenue Management, Practice Management",
    "Diagnostics"
  ].each do |title|
    InterestArea.create(title: title)
  end
end

if CompanyCategory.count < 1
  ["Hospital"].each do |title|
    CompanyCategory.create(title: title)
  end
end
