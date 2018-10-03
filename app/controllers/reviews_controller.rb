class ReviewsController < ApplicationController
  def create
    #review submit calls this method
    @review = Review.new(comment: params[:review][:comment], product_id: params[:product_id])
    if @review.save
      redirect_to product_url(@review.product)
    else
      render '/products/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
