class HomeController < ApplicationController

  def index
  
  end

  def show
    @query_text = params[:query]
    @result = Doi.where doi: @query_text
  end

end
