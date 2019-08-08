# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! :first_name => 'Vaibhav', :last_name => 'Arora', :email => 'vaibhav8275@gmail.com', :password => 'abcd1234', :password_confirmation => 'abcd1234',:role => :admin,:secret_cod => 'foobar'
User.create! :first_name => 'Admin', :last_name => 'Arora', :email => 'admin@gmail.com', :password => 'abcd1234', :password_confirmation => 'abcd1234',:role => :admin,:secret_cod => 'foobar'
User.create! :first_name => 'Visitor', :last_name => 'V', :email => 'visitor@gmail.com', :password => 'abcd1234', :password_confirmation => 'abcd1234',:role => :user,:secret_cod => 'foobar'