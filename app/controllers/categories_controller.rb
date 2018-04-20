class CategoriesController < ApplicationController
  attr_reader :categories, :category, :products

  before_action :find_category, only: %i(show)
  before_action :all_category, only: %i(index show)

  def index; end

  def show
    @products = category.products.paginate page: params[:pages]
  end

  private

  def find_category
    @category = Category.find_by id: params[:id]

    return if category
    flash[:info] = t "nocategory"
    redirect_to root_path
  end

  def all_category
    @categories = Category.all
  end
end
