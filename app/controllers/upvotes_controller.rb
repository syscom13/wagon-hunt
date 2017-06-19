class UpvotesController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    product.upvotes.create! user: current_user
    redirect_to products_path
  end

  def destroy
    upvote = Upvote.find(params[:id])
    upvote.destroy
    redirect_to products_path
  end
end
