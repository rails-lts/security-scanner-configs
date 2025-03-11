# frozen_string_literal: true

require 'rake'
load 'Rakefile'

RSpec.describe 'Rakefile integration' do

  def file_exists_for_all_lts_versions(filename)
    CveList::LTS_VERSIONS.each do |version|
      folder_name = version.gsub('.', '_')
      expect(File.exist?("configs/rails_lts/#{folder_name}/#{filename}")).to eq(true), "#{folder_name}/#{filename} is missing"
    end
  end

  def file_exists_for_all_rack_versions(filename)
    CveList::RACK_VERSIONS.each do |version|
      folder_name = version.gsub('.', '_')
      expect(File.exist?("configs/rack/#{folder_name}/#{filename}")).to eq(true), "#{folder_name}/#{filename} is missing"
    end
  end

  before(:suite) do
    FileUtils.rm_rf('configs/') # clear all configs
    run_rake_task_muted('generate')
  end

  describe 'snyk configs' do
    it 'are built for every LTS version in a separate folder' do
      file_exists_for_all_lts_versions('.snyk')
    end

    it 'are built for every rack version in a separate folder' do
      file_exists_for_all_rack_versions('.snyk')
    end
  end

  describe 'bundler audit configs' do
    it 'are built for every LTS version in a separate folder' do
      file_exists_for_all_lts_versions('.bundler-audit.yml')
    end

    it 'are built for every rack version in a separate folder' do
      file_exists_for_all_rack_versions('.bundler-audit.yml')
    end
  end

  describe 'markdown summaries' do
    it 'are built for every LTS version in a separate folder' do
      file_exists_for_all_lts_versions('cves.md')
    end

    it 'are built for every rack version in a separate folder' do
      file_exists_for_all_rack_versions('cves.md')
    end
  end

  describe 'json lists' do
    it 'are built for every LTS version in a separate folder' do
      file_exists_for_all_lts_versions('cves.json')
    end

    it 'are built for every rack version in a separate folder' do
      file_exists_for_all_rack_versions('cves.json')
    end
  end
end
