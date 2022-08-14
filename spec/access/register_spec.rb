require 'rails_helper'

RSpec.describe 'User', type: :feature do
  before(:all) do
    @user = User.create(name: 'Aduda Aduda', email: 'aduda@mail.com', password: '123456')
  end
  scenario 'Sign In' do
    visit new_user_session_path
    fill_in 'Email', with: '@user.email'
    fill_in 'Password', with: '@user.password'
    click_on 'LOG IN'
    sleep(5)
    expect(current_path).to eq(new_user_session_path)
  end
end
