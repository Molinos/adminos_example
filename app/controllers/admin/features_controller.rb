class Admin::FeaturesController < Admin::BaseController
  authorize_resource param_method: :strong_params

  resource(Feature,
           collection_scope: [:sorted],
           location: proc { params[:stay_in_place] ?
                           edit_polymorphic_path([:admin, resource]) :
                           polymorphic_path([:admin, resource.class]) },
           finder: :find_by_slug!)
end
