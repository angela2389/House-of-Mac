class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]


  def index
    @products = Product.all
  end

  def show
  end


  def set_product
    @product = Product.find(params[:id])
  end

  

end
