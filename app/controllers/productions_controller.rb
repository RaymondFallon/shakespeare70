class ProductionsController < ApplicationController
  def index
    @productions = Production.by_s70.where('year > 2012').order(year: :desc).group_by(&:year)
  end

  def show
    @production = Production.find(params[:id])
    @photos = @production.photos&.sample(3)
    render 'productions/current_show' if @production.title == 'Richard III'
  end
end
