# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wanted do
    area nil
    volume 1
    source "MyString"
    description "MyString"
  end
end
