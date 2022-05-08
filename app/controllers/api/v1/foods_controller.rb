class Api::V1::FoodsController < ApplicationController
    before_action :set_food, only: %i[ show update destroy ]

  def index
    #?(controller: 'owners')
    if params[:controller] == 'owners'
      @foods = Food.where(owner_id: params[:owner_id])
      render json: @foods
    else
      @foods = Food.where(category_id: params[:category_id])
      render json: @foods
    end
  end

  def show
    render json: @food
  end

  def create
    @food = Food.new(food_params)

    if @food.save
        render json: @food, status: :created, location: @food
    else
        render json: @food.errors, status: :unprocessable_entity
    end

  end

  def update
      if @food.update(food_params)
        render json: @food
      else
        render json: @food.errors, status: :unprocessable_entity
      end
  end

  def destroy
      @food.destroy
  end

  private
    def set_food
      if params[:controller] == 'owners'
        @food = Food.where(owner_id: params[:owner_id]).find(params[:id])
      else
        @food = Food.where(category_id: params[:category_id]).find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    # def food_params
    #     params.require(:food).permit(:food_name, :description, :qty, :price, :category_id, :owner_id)
    # end
end
