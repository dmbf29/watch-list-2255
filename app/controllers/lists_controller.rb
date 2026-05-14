class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new # for the form
  end

  def show
    @list = List.find(params[:id])
  end


  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      # when the creation fails, it shows the index page
      # the index page needs @lists in order to build itself
      @lists = List.all
      render :index, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
