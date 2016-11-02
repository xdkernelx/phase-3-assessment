class ToysController < ApplicationController

  def index
    @toys = Toy.where(pet_id: params[:pet_id])
  end

  def show

  end

end
