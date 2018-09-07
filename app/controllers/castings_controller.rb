class CastingsController < ApplicationController
  def new
    @member = Member.find_by(id: member_param)
    @casting = Casting.new
  end

  def create
    @casting = Casting.new(casting_params)
    if @casting.save
      flash[:success] = 'This role has been successfully added.'
      return redirect_to members_path(@casting.member_id)
    end
    flash[:error] = 'Nahhh bra, didnt work'
    redirect_to members_path(id: member_param)
  end

  def destroy
    @casting.destroy
    respond_to do |format|
      format.html { redirect_to castings_path, notice: 'Casting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def casting_params
    params.require(:casting).permit(:role, :member_id, :production_id, :position_id, :bio_type_id)
  end

  def member_param
    params.require(:member_id)
  end
end
