BigCms.setup do |config|
  # ==> Layouts
  # Layout to use when rendering pages#show
  config.layouts :pages_show => "application"
      
  if Rails.env.production?
      
    # Configs for production mode go here
          
  elsif Rails.env.development?
          
    # Configs for development mode go here
      
  end
      
end
