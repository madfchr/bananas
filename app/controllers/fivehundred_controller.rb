class FivehundredController < ApplicationController
  def popular
    @photos = photos_from_json(F00px.popular(rpp: 100, image_size: 600).body)
  end

  protected

  def photos_from_json(json)
    data = JSON.parse(json)
    data['photos'].map { |p| F00px::Photo.new(p['name'], p['image_url']) }
  end
end

 F00px::Photo = Struct.new(:name, :image_url)
