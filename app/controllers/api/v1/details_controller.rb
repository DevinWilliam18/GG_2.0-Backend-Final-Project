class Api::V1::DetailsController < ApplicationController
  before_action :set_detail, :set_food, only: %i[ show update destroy ]

  def index    
    @details = Detail.all
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
        
        @food[:qty] -= @detail[:qty]
        @food.update

        render json: @detail, status: :created, location: @detail
      else
        render json: @detail.errors, status: :unprocessable_entity
      end
  end
  
  def update
      if @detail.update(detail_params)
        
        @food[:qty] -= @detail[:qty]
        @food.update

        render json: @detail
      else
        render json: @detail.errors, status: :unprocessable_entity
      end
  end
  
  def destroy
      @food[:qty] += @detail[:qty]
      @food.update
      @detail.destroy
  end
  
  private
    def set_detail
        @detail = Detail.where(order_id: params[:order_id]).find(params[:id])
    end

    def set_food
      @food = Food.where(id: params[:food_id])
    end


    def detail_params
      params.require(:detail).permit(:qty, :total_price, :order_id, :food_id)
    end

end
