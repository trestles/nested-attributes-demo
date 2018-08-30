# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create({id: 1, email: "jon@jt.com"})
Company.create({id: 1, name: "my company", user_id: 1}, {id: 2, name: "Your company"})
Site.create([{name: "site 1", id: 1, company_id: 1}, {name: "site deux", id: 2, company_id: 2}, {name: "site trois", id: 3, company_id: 1}, {name: "site 4", id: 4, company_id: 2}])