class MembersController < ApplicationController
  def index
    @members = Member.featured.order(:last_name, :first_name)
  end

  def show
    @member = Member.find(params[:id])
  end
end
