require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  before :each do
    @user = User.create(name: 'Aduda Aduda', email: 'aduda@mail.com', password: '123456')

    visit new_user_session_path
    visit categories_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    have_button 'Add Category'
  end

  it 'renders the category new page' do
    expect(current_path).to eql('/users/sign_in')
  end
end
