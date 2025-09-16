class AdministratorHeadlightController < ApplicationController
  def index
    @article = AdministratorHeadlight.all
  end

  def new
    @administrator_headlight = AdministratorHeadlight.new
  end

  def create
    @data = AdministratorHeadlight.new(data_params)
    if @data.save
      redirect_to administrator_headlight_path
    else
      render :new
    end
  end

  def edit
    @data = AdministratorHeadlight.find(params[:id])
  end

  def update
    @data = AdministratorHeadlight.find(params[:id])
    if @data.update(data_params)
      redirect_to administrator_headlight_path(@data), notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @data = AdministratorHeadlight.find(params[:id])
    @data.destroy
    redirect_to administrator_headlight_path
  end

  private

  def data_params
    params.require(:administrator_headlight).permit(:title, :description, :after_image, :before_image)
  end
end
