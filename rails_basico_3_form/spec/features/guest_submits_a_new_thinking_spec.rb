require 'rails_helper'

feature 'Guest submits a new thinking' do
  scenario 'successfully' do
    visit new_opinion_path

    fill_in 'Body', with: 'Rails is awesome!'

    click_on 'Create an option'

    expect(page).to have_content('Rails is awesome!')
  end
end
