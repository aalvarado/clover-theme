module CloverTheme
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path( '../templates', __FILE__ )

      desc "Copies clover-theme sass to current project"
      argument      :path,            :type => :string,   :default => "sass", :desc => "The path inside app to put your sass"
      class_option  :asset_pipeline,  :type => :boolean,  :default => false,  :desc => "It sticks to the asset pipeline layout, introduced in rails 3.1"

      def copy_sass
        if options.asset_pipeline?
          directory 'sass', 'app/assets/stylesheets'
        else
          directory 'sass', "app/#{ path }"
        end
      end

      def copy_images
        if options.asset_pipeline?
          directory 'images', 'app/assets/images/themes/clover'
        else
          directory 'images', 'public/images/themes/clover'
        end
      end

      def copy_javascript
        if options.asset_pipeline?
          directory 'javascript', 'app/assets/javascripts'
        else
          directory 'javascript', 'public/javascripts/themes/clover'
        end
      end

      def copy_stylesheets
        if options.asset_pipeline?
          directory 'stylesheets/fancybox', 'app/assets/stylesheets/fancybox'
        else
          directory 'stylesheets/fancybox', 'public/stylesheets/fancybox'
        end
      end
    end
  end
end
