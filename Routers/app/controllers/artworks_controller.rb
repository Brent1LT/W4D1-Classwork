class ArtworksController < ApplicationController 

  def show 
    render json: Artwork.find(params[:id])
  end 

  def destroy 
    artwork =  Artwork.find(params[:id])
    if artwork.destroy 
      render json: 'Artwork deleted'
    else
      render json: artwork.errors.full_messages 
    end 
  end 

  def create 
    artwork = Artwork.new(params.require(:artwork).permit(:artist_id,:image_url, :title))

    if artwork.save 
      render json: artwork 
    else 
      render json: artwork.errors.full_messages 
    end
  end 
end 