class ArtsController < ApplicationController
  def index
  end

  def show
    @art = Art.find(params[:id])
  end
end
