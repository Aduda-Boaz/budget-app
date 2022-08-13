require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Aduda', email: 'aduda@mail.com', password: 'password', password_confirmation: 'password')
  end

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'email should be an integer' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'Entry should be valid' do
    user = User.new(name: 'Aduda Aduda', email: 'test@mail.com', password: 'password',
                    password_confirmation: 'password')
    expect(user).to be_valid
  end
end
