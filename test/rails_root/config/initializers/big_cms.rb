BigCms.setup do |config|
  # ==> Layouts
  # Layout to use when rendering pages#show
  config.layouts :pages_show => "application"

  # TODO: 2011-01-01 <tony@crowdvine.com> -- There seems to be a bug in paperclip for rails 3 that requires manually calling for the Paperclip init.rb to be run. Here's where I got the solution:
  # http://patshaughnessy.net/2010/5/23/how-to-install-paperclip-in-a-rails-3-app
  require 'paperclip'
  Paperclip::Railtie.insert

  if Rails.env.production?
      
    # Configs for production mode go here
          
  elsif Rails.env.development?
          
    # Configs for development mode go here
      
  end
      
end
