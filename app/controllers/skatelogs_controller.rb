class SkatelogsController < ApplicationController
  def index
    @skatelogs = Skatelog.all
  end

  def new
    @skatelog = Skatelog.new
  end

  def create
    Skatelog.create(skatelog_params)
    redirect_to skatelogs_path
  end

  def edit
    @skatelog = Skatelog.find(params[:id])
  end

  def update
    @skatelog = Skatelog.find(params[:id])
    @skatelog.update_attributes(skatelog_params)
    redirect_to skatelogs_path
  end

  def destroy
    @skatelog = Skatelog.find(params[:id])
    @skatelog.destroy
    redirect_to skatelogs_path
  end

private

  def skatelog_params
    params.require(:skatelog).permit(:title, :seshtime, :tricks, :description)
  end

end
