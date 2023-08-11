class LineItem < ApplicationRecord
  # belongs_to is used to reference the attribute from another table like refrence key.
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
