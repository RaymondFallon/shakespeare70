class ProductionsController < ApplicationController
  def index
    @productions = Production.by_s70.where('year > 2013').order('year desc').group_by(&:year)
  end

  def show
    @production = Production.find(params[:id])
    render 'productions/current_show' if @production.title == 'Clybourne Park'
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  # def production_params
  #   params.require(:production).permit(:title, :start_date, :end_date, :member_id)
  # end
  #
  # def member_param
  #   params.require(:member_id)
  # end
end
