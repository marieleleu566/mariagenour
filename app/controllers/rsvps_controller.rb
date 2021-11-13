class RsvpsController < ApplicationController
  def index
    @rsvps = Rsvp.all
  end

  def show
  end

  def new
    @rsvp = Rsvp.new # needed to instantiate the form_for
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:guestonefirst, :guesttwofirst, :guesttwolast, :guestonelast, :children, :attending,
    :restrictions)
  end
end
