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
    @product = Product.find_by(id: params[:product_id].to_i)
    @review = Review.find_by(id: params[:id].to_i)
  end

  def update
    @review = Review.find_by(id: params[:id])

    @review.comment = params[:review][:comment]
    if @review.save
      redirect_to product_url(@review.product)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find_by(product_id: params[:product_id])
    @review.destroy
    redirect_to product_url(@review.product)
  end

end
