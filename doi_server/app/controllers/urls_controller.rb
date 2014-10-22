class UrlsController < ApplicationController
  before_action :set_url, only: [:update]

  # GET /doid/:doi_id/url
  def index
    @doi = Doi.find params[:doi_id]
    @urls = @doi.urls
  end

  # GET dois/:doi_id/urls/new
  def new
    @doi = Doi.find params[:doi_id]
    @url =@doi.urls.new
  end

  # POST dois:/:doi_id/urls
  #def create
  #  @doi = Doi.find params[:doi_id]
  #  @url = @doi.urls.new(url_params)
  #end
  
  # PATCH/PUT /urls/1
  def update
    if @url.update(url_params)
      redirect_to doi_urls_url(@url.doi), notice: 'URL was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @url = Url.find(params[:id])
    end

    # Never trust parameters from the scary interwebz, only allow the white list through.
    def url_params
      params.require(:url).permit(:url, :timestamp)
    end
end

