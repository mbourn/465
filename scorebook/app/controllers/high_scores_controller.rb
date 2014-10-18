class HighScoresController < ApplicationController

  # GET /high_scores/1
  def show
    @high_score = HighScore.find(params[:id])
  end

  # GET /high_scores
  def index
    @high_scores = HighScore.all
  end
  
  # GET /high_scores/new
  def new
    @high_score = HighScore.new
  end

  # POST /high_scorees
  def create
    @high_score = HighScore.new(params.require(:high_score).permit(:user, :game, :score))
    if @high_score.save
      redirect_to @high_score, notice: 'High score was successfully created.'
    else
      render :new
    end
  end
end
