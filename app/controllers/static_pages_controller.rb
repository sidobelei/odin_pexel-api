class StaticPagesController < ApplicationController
  def index
    @collection_ids = [ "1i7defl", "qv8sjs3", "wyorejm", "wlhwmxr", "2zip4fn" ]
    unless params[:collection_id].empty?
      client = Pexels::Client.new
      @pictures = client.collections.find(params[:collection_id]).media
    else
      render :index
    end
  end
end
