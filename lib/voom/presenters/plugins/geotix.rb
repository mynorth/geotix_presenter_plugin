module Voom
  module Presenters
    module Plugins
      module Geotix
        module WebClientComponents
          # The string returned from this method will be added to the HTML header section of the page layout
          # It will be called once for the page.
          # The pom is passed along with the sinatra render method.
          def render_header_geotix(_pom, render:)
            view_dir = File.join(__dir__, 'geotix')
            render.call :erb, :geotix_header, views: view_dir
          end
        end
      end
    end
  end
end
