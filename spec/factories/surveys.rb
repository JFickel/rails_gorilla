FactoryGirl.define do
  factory :survey do
    name { Faker::Lorem.words(1) }
    user
  end

  factory :survey_with_questions, :parent => :survey do
    after(:create) do |s|
      3.times {
        create(:question_with_choices, :survey => s)
      }
    end
  end
end
