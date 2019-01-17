class RoadmapController < ApplicationController
  def show
    @features = Feature.published.sorted.page(params[:page])
  end
end
