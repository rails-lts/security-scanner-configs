# frozen_string_literal: true

# Require everything for Rake
require 'bundler/setup'
Bundler.require(:default)

require 'rspec/core/rake_task'
require 'rake/clean'
CLOBBER.include('configs/')

require_relative 'lib/cve_list'
require_relative 'lib/tasks/new_cve'
require_relative 'lib/tasks/generator'

RSpec::Core::RakeTask.new(:spec)

task default: %i[spec]

require 'bundler/audit/task'
Bundler::Audit::Task.new
