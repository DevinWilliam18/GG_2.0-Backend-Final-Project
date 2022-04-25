class Api::V1::DetailsController < ApplicationController
  before_action :set_detail, only: %i[ show update destroy ]

  def index
    @details = Order.where(order_id: params[:order_id])
    # if params[:controller] == 'customers'
    #   @details = Detail.all
    #   render json: @details
    # else
    #   render json: @details.errors
    # end
    render json: @details
  end

  def show
    render json: @detail
  end
  

  def create
      @detail = Detail.new(detail_params)
      if @detail.save
        render json: @detail, status: :created, location: @detail
      else
        render json: @detail.errors, status: :unprocessable_entity
      end
  end
  
  def update
      if @detail.update(detail_params)
        render json: @detail
      else
        render json: @detail.errors, status: :unprocessable_entity
      end
  end
  
  def destroy
      @detail.destroy
  end
  
  def set_detail
    if params[:controller] == 'customers/#{params[:customer_id]}/orders'
      @detail = Detail.where(order_id: params[:order_id]).find(params[:id])  
    end
  end

  def detail_params
    params.require(:detail).permit(:qty, :total_price, :order_id, :food_id)
  end

end
