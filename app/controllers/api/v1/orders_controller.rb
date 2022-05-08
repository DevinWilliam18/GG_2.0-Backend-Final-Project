class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: %i[ show update destroy ]

  # GET /orders
  def index
    @orders = Order.where(customer_id: params[:customer_id])
    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    @one_order = Order.new(order_params)

    if @one_order.save
      render json: @one_order, status: :created, location: @order
    else
      render json: @one_order.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /orders/1
  def update
      if @order.update(order_params)
        if @order[:status] == "PAID"
          @order[:finished_time] = Time.zone.now
          @order.update(order_params)
        end
        render json: @order
      else
        render json: @order.errors, status: :unprocessable_entity
      end  
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.where(customer_id: params[:customer_id]).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:status,:customer_id)
    end
end