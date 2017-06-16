class OwnersController < ApplicationController

  def new
    @owner = Owner.new
    @owner.pets.build
    @owner.pets.build
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to owner_path(@owner)
    else
      render :new
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :address, pets_attributes:[:name, :species, :age, :health])
  end

end
