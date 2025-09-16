class AdministratorWheelController < ApplicationController
  def index
    @article = AdministratorWheel.all
  end

  def new
    @administrator_wheel = AdministratorWheel.new
  end

  def create
    @data = AdministratorWheel.new(data_params)
    if @data.save
      redirect_to administrator_wheel_path
    else
      render :new
    end
  end

  def edit
    @data = AdministratorWheel.find(params[:id])
  end

  def update
    @data = AdministratorWheel.find(params[:id])
    if @data.update(data_params)
      redirect_to administrator_wheel_path(@data), notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @data = AdministratorWheel.find(params[:id])
    @data.destroy
    redirect_to administrator_wheel_path
  end

  private

  def data_params
    params.require(:administrator_wheel).permit(:title, :description, :after_image, :before_image)
  end
end
