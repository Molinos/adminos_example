class FeaturesController < ApplicationController
  def show
    @feature = Feature.published.find_by(slug: params[:id])
  end
end
