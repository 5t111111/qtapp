require 'thor'

module Qtapp
  class Command < Thor
    desc 'grep [<git-grep-options>]', 'Print lines using qtapp'
    def grep(*)
      opts = ['--word-regexp', '-e', 'qtapp', '-e', 'qtaputs', '-e', 'qtaap', *ARGV.drop(1)]
      git_grep = ['git', 'grep', opts].flatten.join(' ')
      puts `#{git_grep}`.gsub(/^Gemfile(\.lock)?:.+?\n/, '')
    end
  end
end
