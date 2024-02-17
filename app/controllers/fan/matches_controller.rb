class Fan::MatchesController < ApplicationController
  def show
    @profile = current_user.profile
    @best_match = current_user.find_best_match(Player.all)
      flash.now[:notice] = 'Aproveit seu desconto único'
  end
end
