require 'qtapp/printer'
require 'ap'

module Qtapp::Printer
  class AwesomePrint < Base
    def print(*args)
      ap *args
    end
  end
end
