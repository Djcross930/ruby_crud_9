class PetsController < ApplicationController
  
  def index
    pets = Pet.all
    render json: pets.as_json
  end

  def show
    pet = Pet.find_by(id: params[:id])
    render json: pet.as_json
  end

  def create
    pet = Pet.new
    pet.species = params[:species]
    pet.name = params[:name]
    pet.age = params[:age]
    pet.save
    render json: pet.as_json
  end

  def update
    pet = Pet.find_by(id: params[:id])
    pet.species = params[:species] || pet.species
    pet.name = params[:name] || pet.name
    pet.age = params[:age] || pet.age
    pet.save
    render json: pet.as_json
  end


end
