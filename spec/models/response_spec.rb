require 'spec_helper'

describe Response do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :question_id }
  it { should validate_presence_of :choice_id }
  it { should validate_uniqueness_of(:user_id).scoped_to(:question_id) }
  it 'belongs to a user' do
    user = create(:user)
    response = create(:response, user: user)
    expect(response.user).to eq user
  end 
  it 'belongs to a question' do
    question = create(:question)
    response = create(:response, question: question)
    expect(response.question).to eq question
  end 
  it 'belongs to a choice' do
    choice = create(:choice)
    response = create(:response, choice: choice)
    expect(response.choice).to eq choice
  end 
end
