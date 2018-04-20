class ProductsController < ApplicationController
  attr_reader :products, :product

  before_action :find_product, only: %i(show)

  def index
    @products = Product.all
  end

  def show; end

  private

  def find_product
    @product = Product.find_by id: params[:id]

    return if product
    flash[:info] = t "noproduct"
    redirect_to root_path
  end
end
