# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    name "MyString"
    phone "MyString"
    email "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    zip 1
    county "MyString"
  end
end
