class HomeController < ApplicationController

  def index
  
  end

  def show
    @query_text = params[:query]
    if @query_text =~ /^[a-fA-F0-9]*$/
      @result = Doi.select("doi, name").where doi: @query_text
      if !@result
        @result = ["Couldn't find that DOI"]
      end
    else
      @result = ["Illegal DOI"]
    end
  end

end
