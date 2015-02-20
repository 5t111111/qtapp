require 'highline'
 
module Qtapp
  module Crazy
    @colors = %i( red green yellow blue magenta cyan )
    @crazy_samples = [
      "ｱﾗﾗﾗﾗｰｲ",
      "ｱｰﾗﾗﾗﾗﾗｧ",
      "ﾑﾆｮ",
      "ｽﾞｷｭｰﾝ",
      "ﾌﾞﾛﾛﾛﾛ",
      "ﾄﾙﾁｮｯｸ",
      "ﾊﾞｷｭｰﾝ",
      "ﾋﾞﾖﾝｾ",
      "ﾋﾞﾖｰｸ",
      "ﾄﾑﾖｰｸ",
      "ｿﾞﾜｿﾞﾜｿﾞﾜ",
      "ｷｷｰｯ",
      "ﾇｯﾍｯﾎｰ",
      "ﾐｮﾙﾆﾙ",
      "ﾄﾞｰﾝﾊﾝﾏｰ"
    ]

    @high_line = HighLine.new

    module_function

    def colors
      @colors
    end

    def crazy_line(color)
      # 20.times { print @high_line.color(@crazy_samples.sample, @colors.sample) }
      print @high_line.color("~*" * 30, color)
      print "\n"
    end
  end
end
