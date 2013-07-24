FactoryGirl.define do
  factory :question do
    content { Faker::Lorem.paragraph(1) }
    survey
  end

  factory :question_with_choices, :parent => :question do
    after(:create) do |q|
      3.times {
        create(:choice, :question => q)
      }
    end
  end
end

