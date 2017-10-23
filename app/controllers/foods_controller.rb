# frozen_string_literal: true

class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food= Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.new(food_params)

    if food.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    if food.update(food_params)
      redirect_to foods_path
    else
      render :edit
    end
  end

  def destroy
    Food.find(params[:id]).destroy
    redirect_to foods_path
  end

  private def food_params
    params.require(:food).permit(:name)
  end
end
