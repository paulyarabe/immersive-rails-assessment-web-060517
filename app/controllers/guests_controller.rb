class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    # in rails c i was able to push into the guest's episodes array the guests's episodes
    @guest.save
    redirect_to guest_path(@guest)
  end

end
