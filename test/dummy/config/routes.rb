Dummy::Application.routes.draw do
  get '/:section_name/:page_name', :to => 'pages#show'
  root :to => "pages#home_page"
end
