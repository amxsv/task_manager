FactoryGirl.define do
  factory :task do
    title { generate :string }
  end
end
