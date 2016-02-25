class PuppiesController < ApplicationController

  def index
    @puppies = Puppy.all
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  def create
    @puppy = Puppy.create(params.require(:puppy).permit(:name, :age, :image))
    if (@puppy.save)
      redirect_to puppy_path(@puppy)
    else
      flash[:alert] = Puppy.create.errors
      redirect_to new_puppy_path
    end
  end

  def new
    @puppy = Puppy.new
  end

  def destroy
    @puppy = Puppy.find(params[:id])
    @puppy.destroy
    redirect_to puppies_path
  end

end
