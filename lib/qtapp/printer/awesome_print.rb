require 'qtapp/printer'
require 'ap'

module Qtapp::Printer
  class AwesomePrint < Base
    def print(*args)
      Qtapp::Crazy.crazy_line
      ap *args
      Qtapp::Crazy.crazy_line
    end
  end
end
