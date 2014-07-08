require 'rubygems' 
require 'bundler/setup'
require 'mongoid'                      

require File.expand_path("../lib/invite.rb", __FILE__)
require File.expand_path("../lib/person.rb", __FILE__)

Mongoid.load!(File.expand_path("../config/mongoid.yml", __FILE__))