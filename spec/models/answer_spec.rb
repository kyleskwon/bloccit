require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New Question TItle", body: "New Post Body", resolved: "New Question Resolved")}
  let(:answer) { Answer.create!(body: 'Comment Body', question: question)}

  describe "attributes" do
    it "should respond to body" do
      expect(answer).to respond_to(:body)
    end
  end
end
