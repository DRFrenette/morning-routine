FactoryGirl.define do
  factory :user do
    first_name "Todd"
    sequence(:last_name) {|i| "Howard the #{i.ordinalize}" }
    password "P455W0RD"
    age 34
    sequence(:email) {|i| "Todd#{i}@Bethesda.com"}
  end
end
