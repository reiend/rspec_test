require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'Should not have a Category without a title' do
    category = Category.new
    category.description = 'No Title'
    assert_not category.save 'Save category without title'
  end
end
