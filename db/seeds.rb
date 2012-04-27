# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.find_or_create_by_github_username "foo" do |u|
  u.name           = "Foo Bar"
  u.github_uid     = 1
  u.email          = "foo@example.com"
  u.email_on_reply = true
  u.admin          = true
  u.moderator      = true
end
