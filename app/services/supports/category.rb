class Supports::Category
  attr_reader :category, :page

  def initialize args = {}
    @category = args[:category]
    @page = args[:page]
  end

  def products
    @products ||= category.products.paginate page: page
  end
end
