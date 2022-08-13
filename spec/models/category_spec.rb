require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.new(user_id: 1, name: 'food') }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'user_id should be a number' do
    subject.user_id = 'nil'
    expect(subject).to_not be_valid
  end
end
