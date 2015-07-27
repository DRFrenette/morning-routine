FactoryGirl.define do
  factory :user do
    first_name "Dan"
    sequence(:last_name) { |i| "Frenette #{i.ordinalize}" }
    password "password1"
    age 22
    sequence :email do |i|
      "dan#{i}@asdf.com"
    end
  end
end
