module Voom
  module Presenters
    module Plugins
      module Geotix
        module DSLHelpers

          THEMES = {geotix: {
              colors: {
                  primary10: '#1A237E',
                  primary9: '#283593',
                  primary8: '#303F9F',
                  primary7: '#3949AB',
                  primary6: '#3F51B5',
                  primary5: '#5C6BC0',
                  primary4: '#7986CB',
                  primary3: '#9FA8DA',
                  primary2: '#C5CAE9',
                  primary1: '#E8EAF6',
                  neutral10: '#263238',
                  neutral9: '#37474F',
                  neutral8: '#455A64',
                  neutral7: '#546E7A',
                  neutral6: '#607D8B',
                  neutral5: '#78909C',
                  neutral4: '#90A4AE',
                  neutral3: '#B0BEC5',
                  neutral2: '#ECEFF1',
                  neutral1: '#F2F5F7',
                  accent10: '#01579B',
                  accent9: '#0277BD',
                  accent8: '#0288D1',
                  accent7: '#039BE5',
                  accent6: '#03A9F4',
                  accent5: '#29B6F6',
                  accent4: '#47C3F7',
                  accent3: '#81D4FA',
                  accent2: '#B3E5FC',
                  accent1: '#E1F5FE',
                  accent14: '#AEEA00',
                  accent13: '#C6FF00',
                  accent12: '#EEFF41',
                  accent11: '#F4FF81',
                  red10: '#B71C1C',
                  red9: '#C62828',
                  red8: '#D32F2F',
                  red7: '#E53935',
                  red6: '#F44336',
                  red5: '#E55350',
                  red4: '#E57373',
                  red3: '#EF9A9A',
                  red2: '#FFCDD2',
                  red1: '#FFEBEE',
                  yellow10: '#F57F17',
                  yellow9: '#F9A825',
                  yellow8: '#FBC02D',
                  yellow7: '#FDD835',
                  yellow6: '#FFEB3B',
                  yellow5: '#FFEE58',
                  yellow4: '#FFF176',
                  yellow3: '#FFF59D',
                  yellow2: '#FFF9C4',
                  yellow1: '#FFFDE7',
                  green10: '#1B5E20',
                  green9: '#2E7D32',
                  green8: '#388E3C',
                  green7: '#43A047',
                  green6: '#4CAF50',
                  green5: '#66BB6A',
                  green4: '#81C784',
                  green3: '#A5D6A7',
                  green2: '#C8E6C9',
                  green1: '#E8F5E9'}}}.freeze

          def rgb_color(color_code, theme_code: :geotix)
            theme = THEMES.fetch(theme_code) { raise(Errors::ParameterValidation, "Failed to locate theme for: #{theme_code}") }
            colors = theme.fetch(:colors) { raise(Errors::ParameterValidation, "No RGB colors defined for: #{theme_code}") }
            colors.fetch(color_code) { raise(Errors::ParameterValidation, "Failed to locate color for: #{color_code}") }
          end
        end

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
