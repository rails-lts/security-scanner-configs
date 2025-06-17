# frozen_string_literal: true

require 'cve_list'
require 'debug'
require 'json'
require 'yaml'
require 'pry'
require 'rake'

Dir[File.join(__dir__, 'support', '**', '*.rb')].each { |file| require file }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  include(Module.new do
    class Null
      def method_missing(*)
        nil
      end

      def respond_to_missing?(*)
        true
      end
    end

    def muted(&block)
      old_stdout = $stdout
      old_stderr = $stderr

      $stdout = Null.new
      $stderr = Null.new
      block.call
    ensure
      $stdout = old_stdout
      $stderr = old_stderr
    end

    def run_rake_task_muted(name)
      muted do
        Rake::Task[name].reenable
        Rake.application.invoke_task(name)
      end
    end
  end,
  )
  config.before(:suite) do
    Rake.application.init
    Rake.application.load_rakefile
    FileUtils.rm_rf('configs/')
    run_rake_task_muted('generate')
  end
end
