require 'rails_helper'

RSpec.describe Transaction, type: :model do
  subject { Transaction.new(user_id: 1, name: 'food', amount: '5') }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to be_valid
  end

  it 'user_id should be a number' do
    subject.user_id = 'nil'
    expect(subject).to_not be_valid
  end

  it 'expect to save the entry' do
    user = User.create(name: 'Aduda', email: 'aduda@mail.com', password: '123456',
                       password_confirmation: '123456')
    transaction = Transaction.create(user_id: user.id, name: 'food', amount: '5')
    expect(transaction.name).to eq 'food'
  end
end
