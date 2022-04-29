# frozen_string_literal: true

# Category template
class Category < ApplicationRecord
  validates :title, presence: true, length: { maximum: 18 }, uniqueness: true
end
