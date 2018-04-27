class StaticPagesController < ApplicationController
  def index
    categories = Category.category_items_menu

    render :index, locals: {categories: categories}
  end

  def show
    render "static_pages/index"
  end
end
