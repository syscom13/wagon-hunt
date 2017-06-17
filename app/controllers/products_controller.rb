class ProductsController < ApplicationController

  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    # @product = Product.find(params[:id]) i.e find_product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    # @product = Product.find(params[:id]) i.e find_product
  end

  def update
    # @product = Product.find(params[:id]) i.e find_product
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    # @product = Product.find(params[:id]) i.e find_product
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :url, :tagline)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
