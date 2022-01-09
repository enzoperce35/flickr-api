require 'flickr'

class StaticPagesController < ApplicationController
  def index
  end

  def show
    @flickr_id = params[:flickr_id]
  end
end
