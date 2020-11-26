class DashboardController < ApplicationController

  def owner_bookings
    # action type index to display a list of all bookings of all bathrooms of that owner
    @owner = current_user
    @bathrooms = current_user.bathrooms
    @owner_bookings = current_user.deals
  end

  def wc_bookings
    # action type index to display a list of all bookings of a specific pathroom of that owner
    @bathroom = Bathroom.find(params[:bathroom_id])
    @wc_bookings = @bathroom.bookings
  end

  def show
    @user = current_user
  end

  def edit
    # action to edit user profile
    @user = current_user
  end

  def update
    # action to edit user profile
    @user = current_user
    @user.update(user_params)
    redirect_to user_profile_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :phone_number)
  end

  # def find_bathroom
  #   @bathroom = Bathroom.find(params[:id])
  # end
end
