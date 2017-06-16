class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
    @pet = current_pet
  end

  def update
    @pet = current_pet
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def show
    @pet = current_pet
  end

  def destroy
    current_pet.destroy
    redirect_to pets_path
  end


  private
    def pet_params
      params.require(:pet).permit(:name, :species, :age, :health, :owner_id)
    end

    def current_pet
      Pet.find(params[:id])
    end

end
