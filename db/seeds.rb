# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

# User.create!(
#   first_name: 'Hana',
#   last_name: 'Harencarova',
#   email: 'h.harencarova@gmail.com',
#   password: 'setSomePasswordHere',
#   is_admin: true
# )

7.times do
  Parent.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: Faker::Internet.password
  )
end
