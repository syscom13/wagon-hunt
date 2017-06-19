class ProductsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category]
      @products = Product.select { |product| product.category == params[:category] }
      # @products = Product.where(category: params[:category])
    else
      @products = Product.all
    end
  end

  def show
    # @product = Product.find(params[:id]) i.e find_product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
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
    if @product.user == current_user
      if @product.update(product_params)
        redirect_to products_path
      else
        render :edit
      end
    end
  end

  def destroy
    # @product = Product.find(params[:id]) i.e find_product
    if @product.user == current_user
      @product.destroy
    end
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :url, :tagline, :category, :photo)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
