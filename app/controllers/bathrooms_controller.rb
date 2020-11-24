class BathroomsController < ApplicationController
  before_action :find_bathroom, only: [:edit, :update, :show, :destroy]

  def index
    @bathrooms = Bathroom.all
  end

  def show
  end
  
  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    if @bathroom.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new
  end

  def edit
  end

  def update
    @bathroom.update(bathroom_params)
    redirect_to bathroom_path(@bathroom)
  end

  def destroy
    @bathroom.destroy
    redirect_to bathrooms_path
  end

  private

  def bathroom_params
    params.require(:bathroom).permit(:description, :address, :price, :user_id)
  end

  def find_bathroom
    @bathroom = Bathroom.find(params[:id])
  end
end
