class StaticPagesController < ApplicationController
  attr_reader :categories_banner, :categories_menu

  def index
    @categories_banner = num_cate 3
    @categories_menu = num_cate 5
  end

  def show
    render "static_pages/index"
  end

  private

  def num_cate limit
    @categories = Category.all.limit(limit)
  end
end
