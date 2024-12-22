require 'rails_helper'

RSpec.describe Idea, type: :model do
  it "is valid with valid attributes" do
    idea = Idea.new(titulo: "Sample Title", descripcion: "Sample Description")
    expect(idea).to be_valid
  end

  it "is invalid without a title" do
    idea = Idea.new(descripcion: "Sample Description")
    expect(idea).not_to be_valid
  end
end
