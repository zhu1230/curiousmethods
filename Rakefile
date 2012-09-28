# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler' 
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'curiousmethods'

  app.libs += ['/usr/lib/libsqlite3.dylib', '/usr/lib/libz.1.1.3.dylib']
  app.frameworks = ['AudioToolbox', 'Accounts', 'AdSupport', 'CFNetwork', 'CoreGraphics', 'MobileCoreServices', 'QuartzCore', 'Security', 'Social', 'StoreKit', 'SystemConfiguration']
  app.vendor_project('vendor/Parse.framework', :static, :products => ['Parse'], :headers_dir => 'Headers')
end
