FactoryGirl.define do
  sequence :string do |n|
    "Title #{n}"
  end
end
