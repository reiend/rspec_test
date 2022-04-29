# frozen_string_literal: true

# ArticlesController Template
class ArticlesController < ApplicationController
  # refactor replace by resource

  # resource :articles

  def show
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new

    @article.name = params[:name]
    @article.body = params[:body]

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def focus
    @article = Article.find(params[:id])
  end
end
