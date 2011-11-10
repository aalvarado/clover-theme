module CloverTheme
  class Engine < Rails::Engine
    $CLOVER_THEME_APP_PATH      = 'lib/clover_theme'
    $CLOVER_THEME_TEMPLATE_PATH = 'lib/generators/templates'
    $CLOVER_THEME_SASS_PATH     = File.join $CLOVER_THEME_TEMPLATE_PATH, 'sass'
    $CLOVER_THEME_IMAGES_PATH   = File.join $CLOVER_THEME_TEMPLATE_PATH, 'images'
    $CLOVER_THEME_JS_PATH       = File.join $CLOVER_THEME_TEMPLATE_PATH, 'javascript'

    paths.app.views << File.join( $CLOVER_THEME_APP_PATH, 'app', 'views' )
  end
end
