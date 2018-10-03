class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create

  end

  def new

  end

  def edit

  end

  def show
    @product = Product.find_by(id: params[:id].to_i)
  end

  def update

  end

  def destroy
    redirect_to products_url
  end
end
