# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :record do
    owner "MyString"
    type ""
    source "MyString"
    priority_date "2014-03-09"
    flow "MyString"
    volume "MyString"
    irrigation "MyString"
    domestic "MyString"
    stockwatering "MyString"
    change_apps "MyString"
    proof_due_date "2014-03-09"
    comments "MyText"
  end
end
