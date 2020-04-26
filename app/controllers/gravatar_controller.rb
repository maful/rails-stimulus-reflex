class GravatarController < ApplicationController
  def index
    @gravatar_image_url ||= ""
  end
end
