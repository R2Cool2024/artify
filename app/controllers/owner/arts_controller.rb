class Owner::ArtsController < ApplicationController
  def index
    @arts = Art.where(owner: current_user)
  end
end
