class OrderController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
          if @order.save
              redirect_to @order
            else
              render 'new'
          end
  end

  def show
    @order = Order.find (params[:id])
  end




end
