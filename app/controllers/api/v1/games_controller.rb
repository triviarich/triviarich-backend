class Api::V1::GamesController < ApplicationController
  def game_request
    @game = Game.open.first

    if @game
      @game.update! open: false
      ActionCable.server.broadcast("game_#{@game.id}", found: true)
    else
      @game = Game.create! questions: Question.order('RANDOM()').limit(3)
    end

    respond_to { |f| f.json }
  end
end
