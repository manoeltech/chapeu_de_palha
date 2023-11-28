class HomesController < ApplicationController
  def index
    @products = Product.all
    @company_name = Company.first.name
  end
end
