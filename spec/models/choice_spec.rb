require 'spec_helper'

describe Choice do
  it { should validate_presence_of :content}
  it { should validate_presence_of :question_id}
  it 'belongs to a question' do
    question = create(:question)
    choice = create(:choice, question: question)
    expect(choice.question).to eq question
  end
end
