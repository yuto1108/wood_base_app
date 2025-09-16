class AdministratorTopController < ApplicationController
  def index
    @article = AdministratorTop.all
  end

  def new
    @administrator_top = AdministratorTop.new
  end

  def create
    @data = AdministratorTop.new(data_params)
    if @data.save
      redirect_to administrator_top_path
    else
      render :new
    end
  end

  def edit
    @data = AdministratorTop.find(params[:id])
  end

  def update
    @data = AdministratorTop.find(params[:id])
    if @data.update(data_params)
      redirect_to administrator_top_path(@data), notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @data = AdministratorTop.find(params[:id])
    @data.destroy
    redirect_to administrator_top_path
  end

  private

  def data_params
    params.require(:administrator_top).permit(:title, :description, :after_image, :before_image)
  end
end
