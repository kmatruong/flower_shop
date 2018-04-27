class CategoriesController < ApplicationController
  before_action :find_categories, only: :show

  def show
    @categories = Category.category_items
    supports = Supports::Category.new category: category, page: params[:page]

    render :show, locals: {supports: supports}
  end

  private

  attr_reader :category

  def find_categories
    @category = Category.find_by id: params[:id]

    return if category
    flash[:info] = t "no_category"
    redirect_to root_path
  end
end
