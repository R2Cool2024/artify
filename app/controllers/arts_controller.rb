class ArtsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @arts = Art.all
    if params[:query].present?
      sql_subquery = <<~SQL
        arts.name @@ :query
        OR arts.category @@ :query
        OR artists.name  @@ :query
      SQL
      @arts = @arts.joins(:artist).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @art = Art.find(params[:id])
    @booking = Booking.new
  end

  def new
    @art = Art.new
    @artists_name = []
    Artist.all.each do |artist|
      @artists_name << artist.name
    end
  end

  def create
    @artist = Artist.find(art_params["artist"])
    @art = Art.new
    @art.artist = @artist
    @art.name = art_params["name"]
    @art.description = art_params["description"]
    @art.category = art_params["category"]
    @art.year = art_params["year"].to_i
    @art.price = art_params["price"].to_i
    @art.photo = art_params["photo"]
    @art.owner = current_user
    if @art.save!
      redirect_to art_path(@art)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def art_params
    params.require(:art).permit(:name, :category, :year, :price, :description, :artist, :photo)
  end
end
