class AdministratorIndoorCleaningController < ApplicationController
  def index
    @article = AdministratorIndoorCleaning.all
  end

  def new
    @administrator_indoor_cleaning = AdministratorIndoorCleaning.new
  end

  def create
    @data = AdministratorIndoorCleaning.new(data_params)
    if @data.save
      redirect_to administrator_indoor_cleaning_path
    else
      render :new
    end
  end

  def edit
    @data = AdministratorIndoorCleaning.find(params[:id])
  end

  def update
    @data = AdministratorIndoorCleaning.find(params[:id])
    if @data.update(data_params)
      redirect_to administrator_indoor_cleaning_path(@data), notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @data = AdministratorIndoorCleaning.find(params[:id])
    @data.destroy
    redirect_to administrator_indoor_cleaning_path
  end

  private

  def data_params
    params.require(:administrator_indoor_cleaning).permit(:title, :description, :after_image, :before_image)
  end
end
