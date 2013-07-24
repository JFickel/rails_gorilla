require 'spec_helper'

describe Question do
  it { should validate_presence_of :content}
  it { should validate_presence_of :survey_id}
  it 'belongs to a survey'  do
    survey = create(:survey)
    question = create(:question, survey: survey)
    expect(question.survey).to eq survey
  end 
  it 'has many choices' do
    question = create(:question_with_choices)
    expect(question.choices.count).to eq(3)
  end
  it 'has many responses' do
    question = create(:question)
    response = create(:response, question: question)
    expect(question.responses.first).to eq response
  end
end
