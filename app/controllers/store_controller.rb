class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    # order method is used to sort according to paramter given
  end
end
