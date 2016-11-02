class ToysController < ApplicationController

  def index
    @toys = Toy.where(pet_id: params[:pet_id])
    render json: @toys
  end

  def show
    @toy = Toy.find_by(pet_id: params[:pet_id], id: params[:id])
  end

end
