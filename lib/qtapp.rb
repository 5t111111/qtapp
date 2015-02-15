require 'qtapp/configuration'
require 'qtapp/deprecated'
require 'qtapp/object_extension'
require 'qtapp/printer'

module Qtapp
  extend Deprecated

  class << self
    def config
      @config ||= Qtapp::Configuration.new
    end

    def configure(&block)
      config.tap(&block)
    end
  end
end

Object.__send__ :include, Qtapp::ObjectExtension
