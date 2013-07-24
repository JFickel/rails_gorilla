require 'spec_helper'

describe User do
  it { should validate_presence_of :email }  
  it { should validate_presence_of :password }  
  it { should validate_confirmation_of :password }  

  it "has many responses" do
    user = create(:user_with_responses)
    expect(user.responses.count).to eq(3)
  end
  it "has many surveys" do
    user = create(:user_with_surveys)
    expect(user.surveys.count).to eq(3)
  end
end
