# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :compromise do
    description "MyString"
    date "2013-04-03"
    state false
    reunion_id 1
  end
end
