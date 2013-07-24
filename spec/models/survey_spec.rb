require 'spec_helper'

describe Survey do
  it { should validate_presence_of :name}
  it { should validate_presence_of :user_id}
  it 'belongs to a user' do
    user = create(:user)
    survey = create(:survey, user: user)
    expect(survey.user).to eq user
  end

  it 'has many questions' do
    survey = create(:survey_with_questions)
    expect(survey.questions.count).to eq(3)
  end
end
