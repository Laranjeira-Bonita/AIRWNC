class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(client: current_user)
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
      redirect_to booking_path(@booking), notice: 'Ordered successfully.'
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

  def reviews_average
    @bathroom = Bathroom.find(params[:id])
    @bookings_average = average(@bathroom.bookings)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :duration, :photo)
  end

  def average(bookings)
    all_ratings = []
    bookings.each { |booking| all_ratings << booking.review.rating }
    bookings_average = all_ratings.sum.to_f / all_ratings.count
    return bookings_average
  end
end

