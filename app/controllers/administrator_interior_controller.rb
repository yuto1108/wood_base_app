class AdministratorInteriorController < ApplicationController
  def index
    @article = AdministratorInterior.all
  end

  def new
    @administrator_interior = AdministratorInterior.new
  end

  def create
    @data = AdministratorInterior.new(data_params)
    if @data.save
      redirect_to administrator_interior_path
    else
      render :new
    end
  end

  def edit
    @data = AdministratorInterior.find(params[:id])
  end

  def update
    @data = AdministratorInterior.find(params[:id])
    if @data.update(data_params)
      redirect_to administrator_interior_path(@data), notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @data = AdministratorInterior.find(params[:id])
    @data.destroy
    redirect_to administrator_interior_path
  end

  private

  def data_params
    params.require(:administrator_interior).permit(:title, :description, :after_image, :before_image)
  end
end
