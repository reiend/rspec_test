# frozen_string_literal: true

# CategoryController Template
class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:title, :description)
  end
end
