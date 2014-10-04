class HomeController < ApplicationController

  def index
    # don't need to do anything here
    load "#{Rails.root}/lib/words4.rb"
    dict = Array.new
    dict = dictionary
    @word_start = dict.sample
    @word_end = dict.sample
    while @word_start == @word_end do
	@word_end = dict.sample
    end
  end

  def show
	@one=params[:word_one]
	@two=params[:word_two]
   # if @solution =~ /^[a-zA-Z]*$/
   # else
   #  @result = "Some of the words you entered weren't words. <br>  Perhaps you should find an easier game."
 #   end
  end

end
