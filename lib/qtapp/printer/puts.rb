require 'qtapp/printer'

module Qtapp::Printer
  class Puts < Base
    def print(*args)
      color = Qtapp::Crazy.colors.sample
      Qtapp::Crazy.crazy_line(color)
      puts *args
      Qtapp::Crazy.crazy_line(color)
    end
  end
end
