require 'qtapp/printer'
require 'pp'

module Qtapp::Printer
  class PrettyPrint < Base
    def print(*args)
      color = Qtapp::Crazy.colors.sample
      Qtapp::Crazy.crazy_line(color)
      pp *args
      Qtapp::Crazy.crazy_line(color)
    end
  end
end
