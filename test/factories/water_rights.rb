# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :water_right do
    number "MyString"
    flow_cfs "9.99"
    flow_ac_ft "9.99"
    sole_supply_acres "9.99"
    place_of_use "MyString"
    change_application_number "MyString"
    proof_due_date "2014-05-19"
  end
end
