class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
      @customers = Customer.all
  end

  def show
  end

  def new
      @customer = Customer.new
  end

  def edit
  end

  def create
    @customer = Customer.new(user_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :password)
  end


end
