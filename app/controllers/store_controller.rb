class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    # order method is used to sort according to paramter given
    @products = Product.order(:title)
  end
end
