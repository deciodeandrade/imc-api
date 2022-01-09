class OrdersController < ApplicationController
  def create
  end

  def show
    @order = "oi"
    render template: "orders/show"
  end
end
