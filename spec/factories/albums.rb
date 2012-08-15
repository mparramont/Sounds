# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :album do
    name "MyString"
    release_date "2012-08-15"
    info "MyText"
  end
end
