class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(name: params[:product][:name],
                           description: params[:product][:description],
                           price_in_cents: params[:product][:price_in_cents])
    if @product.save
      flash[:notice] = "Create Successful!"
      redirect_to product_url(@product)
    else
      render :new
    end
  end

  def new
    @product = Product.new()
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def show
    @product = Product.find_by(id: params[:id].to_i)
  end

  def update
    @product = Product.find_by(id: params[:id].to_i)

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash[:notice] = "Update Successful!"
      redirect_to product_url(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:notice] = "Destroy Successful"
    redirect_to products_url
  end
end
