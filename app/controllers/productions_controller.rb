class ProductionsController < ApplicationController
  def index
    @productions = Production.by_s70.order('year desc')
  end

  def show
    @production = Production.find(params[:id])
    render 'productions/current_show' if @production.title == 'Clybourne Park'
  end

  # GET /productions/new
  def new
    @production = Production.new
  end

  # GET /productions/1/edit
  def edit
  end

  # POST /productions
  # POST /productions.json
  def create
    @production = Production.new(production_params)

    respond_to do |format|
      if @production.save
        format.html { redirect_to @production, notice: 'Production was successfully created.' }
        format.json { render :show, status: :created, location: @production }
      else
        format.html { render :new }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def production_params
    params.require(:production).permit(:title, :start_date, :end_date, :member_id)
  end

  def member_param
    params.require(:member_id)
  end
end
