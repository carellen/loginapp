FactoryBot.define do
  factory :user do
    firstname { 'John' }
    lastname { 'Doe' }
    birthdate { Date.today + 16.year }
    email { 'user@example.com' }
    password { 'password' }
  end
end
