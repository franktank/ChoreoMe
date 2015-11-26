class SongsController < ApplicationController
  def create
    @song = Song.create(song_params)
  end

  def song_params
    params.require(:song).permit!
  end
end
