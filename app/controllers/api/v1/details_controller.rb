
class Api::V1::DetailsController < ApplicationController
  before_action :set_detail, :set_food ,only: %i[ show update destroy ]

  def index    
    @details = Detail.where(order_id: params[:order_id])
    render json: @details
  end

  def show
    render json: @detail
  end
  
  def create
      @one_detail = Detail.new(detail_params)
      if @one_detail.save
        
        @food[:qty] -= params[:qty].to_f
        @food.update(food_params)

        @one_detail[:total_price] = @one_detail[:qty].to_f * @food[:price] 
        @one_detail.update(detail_params)
      
      else
        render json: @one_detail.errors, status: :unprocessable_entity
      end
  end
  
  def update
      if @detail.update(detail_params)        
        # @food = Food.where(id: @detail[:food_id])

        @food[:qty] -= params[:qty]
        
        @detail[:total_price] = @detail[:qty].to_f * @food[:price] 
        @detail.update(detail_params)
        @food.update(food_params)    

        render json: @detail
      else
        render json: @detail.errors, status: :unprocessable_entity
      end
  end
  
  def destroy
      @food[:qty] += params[:qty]
      @food.update(food_params)
      @detail.destroy
  end
  
 private
  def set_detail
    @detail = Detail.where(order_id: params[:order_id]).find(params[:id])
  end

  def set_food
    @food = Food.find(params[:food_id])
  end

  def detail_params
    params.require(:detail).permit(:qty, :total_price, :order_id, :food_id)
  end

  def food_params
    params.require(:food).permit(:food_name, :description, :qty, :price, :category_id, :owner_id)
  end

end
