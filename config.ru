require 'rubygems'

use Rack::Static, :urls => ['/js', '/bower_components'], root: 'public'

require File.join(File.dirname(__FILE__), 'lib/app.rb')

run App
