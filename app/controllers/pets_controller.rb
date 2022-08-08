class PetsController < ApplicationController
  def index
    pets = Pet.all
    render json: pets.as_json
  end

  def show
    pet = Pet.find_by(id: params[:id])
    render json: pet.as_json
  end

end
