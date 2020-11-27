class ReviewsController < ApplicationController
 
    def new
      @review = Review.new
      raise
      @booking = Booking.find(params[:format])
      
    end
  
    def create
      @booking = Booking.find(params[:booking_id])
      @review = Review.new(review_params)
      @review.booking = @booking
     
      if @review.save
        redirect_to booking_path(@booking), notice: 'Thanks for your opinion'
      else
        render :new
      end
    
    end
  
    def destroy
      
    end
  
    private
  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
