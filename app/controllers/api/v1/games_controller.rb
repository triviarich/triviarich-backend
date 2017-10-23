class Api::V1::GamesController < ApplicationController
  def game_request
    @game = Game.open.first

    respond_to { |f| f.json }
  end
end
