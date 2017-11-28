require 'rails_helper'

describe Question do
  it { should have_many :answers }
  it { should have_many :votes }

  it 'have a readable title' do
    question = FactoryBot.create(:question)
    expect(question.title).to eq 'example title'
  end

  it 'have a readable body' do
    question = FactoryBot.create(:question)
    expect(question.body).to eq 'example body' 
  end


end
