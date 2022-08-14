require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  before :each do
    @user = User.create(name: 'Aduda Aduda', email: 'aduda@mail.com', password: '123456')

    visit new_user_session_path
    visit categories_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_on 'LOG IN'
  end

  it 'renders the category index page' do
    sleep(1)
    expect(current_path).to eql('/categories')
  end
end
