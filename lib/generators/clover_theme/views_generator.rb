module CloverTheme
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      LIB_ROOT_APP_PATH = '../../clover_theme/'

      desc "Copies clover_them haml views"

      def copy_views
        directory File.expand_path( File.join( LIB_ROOT_APP_PATH, 'app/views/layouts/themes' ), __FILE__  ), 'app/views/layouts'
      end
    end
  end
end
