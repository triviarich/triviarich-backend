class GamesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "game_#{params[:id]}"
  end
end