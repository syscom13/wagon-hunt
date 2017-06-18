class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @today = Date.today
    @products = Product.all
  end
  def team
    @members = ["Nico", "Romain", "Julie"]
  end
  def join_us
    render plain: "Send us a mail !"
  end
end
