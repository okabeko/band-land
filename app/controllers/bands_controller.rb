class BandsController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @bands = Band.all.page(params[:page])
  end

  def show
    @bands = Band.find(params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      flash[:success] = 'バンドを登録しました。'
      redirect_to @band
    else
      flash.now[:danger] = 'バンドの登録に失敗しました。'
      render :new
    end
  end

  def update
    @band = Band.find(params[:id])
    redirect_to @band
  end
end
