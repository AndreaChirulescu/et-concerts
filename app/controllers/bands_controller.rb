class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.create(params.require(:band).permit(:name, :country))
    @band.save!
    redirect_to bands_path
  end

  def edit
    @band = Band.where(:id => params[:id]).first
  end

  def update
    @band = Band.where(:id => params[:id]).first
    @band.update_attributes(params.require(:band).permit(:name, :country))
    @band.save!
    redirect_to bands_path
  end

end
