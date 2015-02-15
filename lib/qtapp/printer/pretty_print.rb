require 'qtapp/printer'
require 'pp'

module Qtapp::Printer
  class PrettyPrint < Base
    def print(*args)
      pp *args
    end
  end
end
