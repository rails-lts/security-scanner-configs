# frozen_string_literal: true

require 'rake'
load 'Rakefile'

RSpec.describe 'validate_cves rake task' do
  before do
    Rake::Task['validate_cves'].reenable
  end

  it 'is a prerequisite of generate_configs' do
    prerequisites = Rake::Task['generate_configs'].prerequisites
    expect(prerequisites).to include('validate_cves')
  end

  it 'aborts when a new CVE file still contains TODO placeholders' do
    file = Tempfile.new(['cve', '.yml'], 'lib/cves/rails_lts')
    file.write("cve_identifier: CVE-TEST\ntitle: TODO\n")
    file.close
    path = file.path

    allow(CveList::Input::NewCveFiles).to receive(:detect).and_return([path])

    expect do
      Rake::Task['validate_cves'].invoke
    end.to raise_error(RuntimeError, /#{Regexp.escape(path)} still contains TODO placeholders/)
  ensure
    FileUtils.rm_f(path)
  end

  it 'aborts when a new CVE file references an unknown patched version' do
    file = Tempfile.new(['cve', '.yml'], 'lib/cves/rails_lts')
    file.write(<<~YAML)
      cve_identifier: CVE-TEST-0003
      unaffected_versions:
        - '< 6'
      affected_versions: []
      patched:
        - versions:
          - '~> 6.1.7.99'
          patch_note: ~
          requires_intervention: false
    YAML
    file.close
    path = file.path

    allow(CveList::Input::NewCveFiles).to receive(:detect).and_return([path])

    expect do
      Rake::Task['validate_cves'].invoke
    end.to raise_error(CveList::VersionsCoverageValidator::MissingVersionError, /6\.1\.7\.99/)
  ensure
    FileUtils.rm_f(path)
  end

  it 'is a no-op when there are no new CVE files' do
    allow(CveList::Input::NewCveFiles).to receive(:detect).and_return([])

    expect do
      Rake::Task['validate_cves'].invoke
    end.not_to raise_error
  end
end
