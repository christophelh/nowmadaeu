# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning Db'

User.destroy_all
Job.destroy_all

puts 'Creating users ... '

Cris = User.new(email: 'cris@nowmada.eu', password: '123456', skills: 'true')
Chris = User.new(email: 'chris@nowmada.eu', password: '123456', skills: 'false')
Intern = User.new(email: 'intern@nowmada.eu', password: '123456', skills: 'false')

Cris.save!
Chris.save!
Intern.save!

puts 'Users created... '


puts 'Creating job'


