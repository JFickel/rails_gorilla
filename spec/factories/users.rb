FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password 'password' 
    password_confirmation 'password'
  end

  factory :user_with_surveys, :parent => :user do
    after(:create) do |u|
      3.times {
        create(:survey_with_questions, :user => u)
      }
    end
  end

  factory :user_with_responses, :parent => :user do
    after(:create) do |u|
      survey = create(:survey_with_questions)
      questions = survey.questions
      questions.each do |q|
        choice = q.choices.first
        create(:response, question: q, user: u, choice: choice)
      end
    end
  end
end

