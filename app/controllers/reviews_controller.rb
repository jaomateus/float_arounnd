class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @floaty = Floaty.find(params[:list_id])
    @review.floaty = @floaty
    respond_to do |format|
      if @review.save
       format.html { redirect_to floaty_path(@floaty) }
       format.json
      else
        format.html { render "floaties/show", status: :unprocessable_entity }
        format.json
      end
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   # redirect_to list_path(@review.list)
  # end

  private

  def review_params
    params.require(:review).permit(:comment, :stars)
  end
end
