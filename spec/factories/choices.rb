FactoryGirl.define do
  factory :choice do
    content { Faker::Lorem.words(1) }
    question
  end

end
