class TracksController < ApplicationController
  def new
    @track = Track.new
    render :new
  end
end
