class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    begin
      @pet = Pet.find(params[:id])
    rescue
      @pet = nil
    end
  end

end
