class ToysController < ApplicationController

  def index
    @toys = Toy.where(pet_id: params[:pet_id])
    if @toys.empty?
      redirect_to '/'
    else
      render json: @toys
    end
  end

  def show
    @toy = Toy.find_by(pet_id: params[:pet_id], id: params[:id])
  end

end
