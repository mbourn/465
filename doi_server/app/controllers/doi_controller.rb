class doisController < ApplicationController
  before_action :set_doi, only: [:show, :edit, :update, :destroy]

  # GET /dois
  def index
    @dois = doi.all
  end

  # GET /dois/1
  def show
  end

  # GET /dois/new
  def new
    @doi = doi.new
  end

  # GET /dois/1/edit
  def edit
  end

  # POST /dois
  def create
    @doi = doi.new(doi_params)

    if @doi.save
      redirect_to @doi, notice: 'doi was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dois/1
  def update
    if @doi.update(doi_params)
      redirect_to @doi, notice: 'doi was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dois/1
  def destroy
    @doi.destroy
    redirect_to dois_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doi
      @doi = doi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doi_params
      params.require(:doi).permit(:name, :description)
    end
end
