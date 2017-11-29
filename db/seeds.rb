# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
Answer.destroy_all
User.destroy_all

admin = User.create!(username: "Admin", email: "admin@admin.com", password: "password", password_confirmation: "password", admin: true)

10.times do |email|
  user = User.create!(username: Faker::Simpsons.character, email: Faker::Internet.email, password: "password", password_confirmation: "password")
end

40.times do
  question =  Question.create!(title: Faker::Hipster.sentence(3, true), body: Faker::Seinfeld.quote, net_vote: Faker::Number.between(1, 10) )
  3.times do
    question.answers.create!(body: Faker::RickAndMorty.quote, net_vote: Faker::Number.between(1, 10))
  end
end

p "Create #{Question.count} questions."
p "Create #{Answer.count} answers."
p "Create #{User.count} users."
