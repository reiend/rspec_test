require 'rails_helper'

RSpec.describe Category, type: :model do
  let!(:category) { Category.new }

  context 'Validation' do
    it '1, is not valid without a title' do
      category.description = 'Sample desc'
      expect(category).to_not be_valid

      # expect(category.errors).to be_present
      # expect(category.errors.to_h.keys).to include(:name)
    end

    it '2. should have a title with a maxlength  of 18' do
      category.title = 'The quick brown fox jumps over the lazy dog'
      expect(category).to_not be_valid
    end

    it '3, should have a unique title ' do
      Category.create(title: 'Title_1')
      # category.title = 'Title_I'

      expect(category).to_not be_valid
    end
  end

end
