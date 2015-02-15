require 'qtapp/printer'

module Qtapp::Printer
  class Puts < Base
    def print(*args)
      Qtapp::Crazy.crazy_line
      puts *args
      Qtapp::Crazy.crazy_line
    end
  end
end
