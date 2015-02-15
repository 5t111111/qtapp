require 'qtapp/printer'
require 'pp'

module Qtapp::Printer
  class PrettyPrint < Base
    def print(*args)
      Qtapp::Crazy.crazy_line
      pp *args
      Qtapp::Crazy.crazy_line
    end
  end
end
