FactoryBot.define do
  factory :user do
    firstname { 'John' }
    lastname { 'Doe' }
    birthdate { Date.today - 16.year - 1.day }
    email { 'user@example.com' }
    password { 'password' }
  end
end
