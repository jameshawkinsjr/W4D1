class ArtworksController < ApplicationController
  def index
    artwork = Artwork.find_by(artist_id:params[:user_id])
    artwork_share = ArtworkShare.find_by(viewer_id:params[:user_id])
    display = [artwork, artwork_share]
    render json: display
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end

  private
  def artwork_params
    params.require(:artwork).permit(:artist_id, :title, :image_url)
  end
end