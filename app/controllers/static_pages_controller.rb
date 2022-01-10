require 'flickr'

class StaticPagesController < ApplicationController
  def index
  end

  def show
    flickr_id = params[:flickr_id]

    flickr = Flickr.new

    @photos = flickr.photos.search(:user_id => flickr_id.values[0], :api_key => ENV['FLICKR_API_KEY'])

  end
end
