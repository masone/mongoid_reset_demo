ENV['MONGOID_ENV'] = 'test'
                                       
require "minitest/autorun"
require File.expand_path("../../mongoid_reset_demo.rb", __FILE__)