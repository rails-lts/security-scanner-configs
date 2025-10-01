# frozen_string_literal: true

require 'rake'

def define_generate_rake_tasks_for(task_name, file_name, generator_class)
  all_lts_dirs = CveList::LTS_VERSIONS.map { |version| "configs/rails_lts/#{version.gsub('.', '_')}" }
  all_rack_dirs = CveList::RACK_VERSIONS.map { |version| "configs/rack/#{version.gsub('.', '_')}" }

  namespace :generate do
    desc "Generate #{file_name} for all LTS versions"
    task task_name => (all_lts_dirs + all_rack_dirs).map { |dir| "#{dir}/#{file_name}" }
  end

  CveList::LTS_VERSIONS.each do |lts_version|
    lts_dir = "configs/rails_lts/#{lts_version.gsub('.', '_')}"
    file "#{lts_dir}/#{file_name}" => [lts_dir, *FileList.new('lib/cves/rails_lts/*.yml')] do |task|
      puts "Writing #{task.name}"

      patch_list = CveList::Input::Parser.patch_list('rails_lts', lts_version)

      sample_config = generator_class.generate_sample_config(patch_list, lts_version, :rails)
      File.write(task.name, sample_config)
    end
  end

  CveList::RACK_VERSIONS.each do |lts_version|
    lts_dir = "configs/rack/#{lts_version.gsub('.', '_')}"
    file "#{lts_dir}/#{file_name}" => [lts_dir, *FileList.new('lib/cves/rack/*.yml')] do |task|
      puts "Writing #{task.name}"

      patch_list = CveList::Input::Parser.patch_list('rack', lts_version)

      sample_config = generator_class.generate_sample_config(patch_list, lts_version, :rack)
      File.write(task.name, sample_config)
    end
  end
end

all_lts_dirs = CveList::LTS_VERSIONS.map { |version| "configs/rails_lts/#{version.gsub('.', '_')}" }
all_lts_dirs.each do |lts_dir|
  directory lts_dir
end

all_rack_dirs = CveList::RACK_VERSIONS.map { |version| "configs/rack/#{version.gsub('.', '_')}" }
all_rack_dirs.each do |rack_dir|
  directory rack_dir
end

define_generate_rake_tasks_for(:snyk, '.snyk', CveList::OutputGenerator::SnykConfig)
define_generate_rake_tasks_for(:bundler_audit, '.bundler-audit.yml', CveList::OutputGenerator::BundlerAuditConfig)
define_generate_rake_tasks_for(:markdown, 'cves.md', CveList::OutputGenerator::MarkdownSummary)
define_generate_rake_tasks_for(:json, 'cves.json', CveList::OutputGenerator::JsonSummary)

# API tasks
desc 'Generate missing configs'
task generate_configs: ['generate:snyk', 'generate:bundler_audit', 'generate:markdown', 'generate:json']

desc 'Regenerate all configs'
task regenerate_all_configs: [:clobber, :generate_configs]
