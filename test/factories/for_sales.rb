# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :for_sale do
    area nil
    volume 1.5
    source "MyString"
    description "MyString"
    transferable_to "MyString"
  end
end
