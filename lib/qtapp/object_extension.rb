require 'qtapp/printer'
require 'qtapp/util'

module Qtapp
  module ObjectExtension
    def qtapp(printer = Qtapp.config.default_printer)
      Qtapp::Util.report_called if Qtapp.config.report_caller

      tap {
        Qtapp::Printer.instance(printer).print block_given? ? yield(self) : self
      }
    end

    def taputs(&block)
      qtapp :puts, &block
    end

    def taap
      warn 'DEPRECATION WARNING: `taap` is deprecated. Set `Qtapp.config.default_printer = :awesome_print` and use `qtapp` instead.'

      qtapp :awesome_print
    end
  end
end
