FactoryGirl.define do
  factory :user do
    name     "James Doe"
    email    "james.doe@example.com"
    password "Secret321"
    password_confirmation "Secret321"
  end
end
