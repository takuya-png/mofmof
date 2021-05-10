class EstatesController < ApplicationController
  before_action :set_estate, only: [:show, :edit, :update, :destroy]
  def new
    @estate = Estate.new
    2.times do
      @estate.stations.build
    end
  end

  def show
  end

  def edit
    @estate.stations.build
  end

  def index
    @estates = Estate.all
  end

  def create
    @estate = Estate.new(estate_params)
    if @estate.save
      redirect_to estates_path, notice: "物件登録完了"
    else
      render :new
    end
  end

  def update
    if @estate.update(estate_params)
      redirect_to estate_path(@estate.id), notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    @estate.destroy
    redirect_to estates_path, notice: "物件を削除しました！"
  end

  private
  def set_estate
    @estate = Estate.find(params[:id])
  end

  def estate_params
    params.require(:estate).permit(:name, :rent, :address, :age, :remarks, stations_attributes:
      [
        :id, :route, :name, :on_foot
      ]    
    )
  end
end
