class ArtsController < ApplicationController
  def index
    @Arts = Art.all
  end

  def show
  end
end
