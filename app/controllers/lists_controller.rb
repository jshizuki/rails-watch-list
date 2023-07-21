class ListsController < ApplicationController
  def home
    # if user_signed_in?
    #   redirect_to lists_path
    # else
    #   redirect_to new_user_session_path
    # end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      # Displayed reasons why it can't be saved
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
