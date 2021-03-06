class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @item = RakutenWebService::Ichiba::Item.search(item_code: params[:item_code])
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to item_path(@review.item_code)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_name, :content, :item_code, :score)
  end
end
