class BookingsController < ApplicationController
  def index
    @bookings = Booking.where( client: current_user )
  end

  def new
    @booking = Booking.new
    @bathroom = Bathroom.find(params[:bathroom_id])
   
  end
  
  def create
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new(booking_params)    
    @booking.client = current_user
    @booking.bathroom = @bathroom
    if @booking.save
      redirect_to bathroom_path(@bathroom), notice: 'Ordered successfully.'
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if @booking.update(booking_params)
      redirect_to @Booking, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
  private
  def booking_params
    params.require(:booking).permit(:date, :duration)
  end
end
