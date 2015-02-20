require 'qtapp/printer'
require 'ap'

module Qtapp::Printer
  class AwesomePrint < Base
    def print(*args)
      color = Qtapp::Crazy.colors.sample
      Qtapp::Crazy.crazy_line(color)
      ap *args
      Qtapp::Crazy.crazy_line(color)
    end
  end
end
