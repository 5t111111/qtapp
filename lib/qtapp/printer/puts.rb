require 'qtapp/printer'

module Qtapp::Printer
  class Puts < Base
    def print(*args)
      puts *args
    end
  end
end
