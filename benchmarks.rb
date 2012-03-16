
class User
end

class Account
  attr_reader :user
  attr_reader :cart
  attr_reader :account_category

  def pay_for_cart
    PaymentStrategy.calculate :cart, :account_category
  end
end

class Cart
  def add_cart_item cart_item
    @items << cart_item
  end

  def remove_cart_item cart_item
  end

  def change_cart_item_count
  end

  def total
    # inject each
  end
end

class CartItem
  attr_reader :meal
  attr_reader :count
end

class Meal
end

class CartService
  def persists_cart
    # always, db design with two tables:
    # orders, order_details
  end
end
