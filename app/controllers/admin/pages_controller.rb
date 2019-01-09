class Admin::PagesController < Admin::BaseController
  authorize_resource param_method: :strong_params

  resource(Page,
            filter_by_locale: true,
          location: proc { params[:stay_in_place] ?
                          edit_polymorphic_path([:admin, resource]) :
                          polymorphic_path([:admin, resource.class]) },
          collection_scope: [:sorted])
end
