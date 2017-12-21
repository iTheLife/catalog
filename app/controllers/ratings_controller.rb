class RatingsController < ApplicationController
#  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @game = Game.find(params[:game_id])
    @rating = @game.ratings.create(rating_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:game_id])
    @rating = @game.ratings.find(params[:id])
    @rating.destroy
    redirect_to game_path(@game)
  end
  private
  def rating_params
    params.require(:rating).permit(:commenter, :review, :value)
  end
end
