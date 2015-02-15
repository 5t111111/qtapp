module Qtapp
  module Deprecated
    def verbose=(bool)
      warn 'DEPRECATION WARNING: Qtapp.verbose= is deprecated. Use Qtapp.config.report_caller= instead.'

      config.report_caller = bool
    end

    def verbose
      warn 'DEPRECATION WARNING: Qtapp.verbose is deprecated. Use Qtapp.config.report_caller instead.'

      config.report_caller
    end
  end
end
