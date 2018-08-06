class MicrosoftsController < ApplicationController
  before_action :set_microsoft, only: [:show, :edit, :update, :destroy]

  def index
    @microsofts = Microsoft.all
  end

  def show
  end

  def new
    @microsoft = Microsoft.new
  end

  def edit
  end

  def create
    @microsoft = Microsoft.new(microsoft_params)

    respond_to do |format|
      if @microsoft.save
        format.html { redirect_to @microsoft, notice: 'Microsoft was successfully created.' }
        format.json { render :show, status: :created, location: @microsoft }
      else
        format.html { render :new }
        format.json { render json: @microsoft.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @microsoft.update(microsoft_params)
        format.html { redirect_to @microsoft, notice: 'Microsoft was successfully updated.' }
        format.json { render :show, status: :ok, location: @microsoft }
      else
        format.html { render :edit }
        format.json { render json: @microsoft.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @microsoft.destroy
    respond_to do |format|
      format.html { redirect_to microsofts_url, notice: 'Microsoft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_microsoft
      @microsoft = Microsoft.find(params[:id])
    end

    def microsoft_params
      params.require(:microsoft).permit(:content, :user_id)
    end
end
