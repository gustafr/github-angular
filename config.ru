require 'rubygems'

use Rack::Static, :urls => ['/js'], root: '/'

require File.join(File.dirname(__FILE__), 'lib/app.rb')

run App
