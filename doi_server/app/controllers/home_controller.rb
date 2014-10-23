class HomeController < ApplicationController

  def index
  
  end

  def show
    @query_text = params[:query]
    @result = Doi.find_by(doi: @query_text)
    if( !@result )
      @result = Doi.find_by(name: @query_text)
    end
  end

end
