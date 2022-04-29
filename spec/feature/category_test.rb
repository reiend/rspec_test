require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  describe 'View new category' do
    before { visit new_category_path }

    it 'show a new page' do
      expect(page).to have_content 'Title'
      expect(page).to have_content 'Description'
      expect(page).to have_selector :link_or_button, 'Create Category'
    end
  end

  describe 'Fillup form and submit' do
    before { visit new_category_path }

    it 'show a new page' do
      within 'form' do
        fill_in 'category_title', with: 'Programming'
        fill_in 'category_description', with: 'Programming description'
        click_on 'Create Category'
      end
      expect(page).to have_content 'New Category'
    end
  end
end
