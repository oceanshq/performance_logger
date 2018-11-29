require 'performance_logger/version'
require 'csv'
require 'logger'
require 'get_process_mem'
require 'performance_logger/performance_logger'


module PerformanceLogger
  def self.new(opts={})
    if opts.is_a?(Hash)
      PLogger.new(opts)
    else
      puts "I'm sorry, I don't know what you're trying to pass here!\n\n Please refer to the docs or pass an options hash https://github.com/oceanshq/performance_logger"
    end
  end
end
