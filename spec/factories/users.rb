# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "MyString"
    mobile "MyString"
    email "MyString"
    location "MyString"
    profession "MyString"
    married false
  end
end
