require 'singleton'
require 'qtapp/crazy'

module Qtapp
  module Printer
    autoload :AwesomePrint, 'qtapp/printer/awesome_print'
    autoload :PrettyPrint,  'qtapp/printer/pretty_print'
    autoload :Puts,         'qtapp/printer/puts'

    def self.instance(name)
      case name
      when :pretty_print
        PrettyPrint.instance
      when :puts
        Puts.instance
      when :awesome_print
        AwesomePrint.instance
      else
        raise ArgumentError, "Unknown printer: #{name.inspect}"
      end
    end

    class Base
      include Singleton

      def print(*args)
        raise NotImplementedError
      end
    end
  end
end
