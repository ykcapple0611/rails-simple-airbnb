class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flats = Flat.new(flat_params)
  end
end

private

params.require(:flat).permit(:name, :address, :descsription,)
