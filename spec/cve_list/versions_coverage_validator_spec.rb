# frozen_string_literal: true

module CveList
  RSpec.describe VersionsCoverageValidator do
    describe '.validate!' do
      it 'does not raise when patched versions match known LTS versions' do
        expect do
          described_class.validate!(['lib/cves/rails_lts/CVE-2026-33170.yml'])
        end.not_to raise_error
      end

      it 'does not raise when patched is empty' do
        expect do
          described_class.validate!(['lib/cves/rails_lts/CVE-2026-33167.yml'])
        end.not_to raise_error
      end

      it 'raises when a patched version matches no known LTS version' do
        dir = 'lib/cves/rails_lts'
        file = Tempfile.new(['cve', '.yml'], dir)
        file.write(<<~YAML)
          cve_identifier: CVE-TEST-0001
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

        expect do
          described_class.validate!([path])
        end.to raise_error(
          VersionsCoverageValidator::MissingVersionError,
          "CVE-TEST-0001: patched version '~> 6.1.7.99' matches no entry in LTS_VERSIONS — add it to lib/cve_list/versions.rb",
        )
      ensure
        FileUtils.rm_f(path) if defined?(path) && path
      end

      it 'validates rack CVE files against RACK_VERSIONS' do
        file = Tempfile.new(['cve', '.yml'])
        dir = 'lib/cves/rack'
        path = File.join(dir, File.basename(file.path))
        file.write(<<~YAML)
          cve_identifier: CVE-TEST-0002
          unaffected_versions:
            - '>= 0'
          affected_versions: []
          patched:
            - versions:
              - '~> 9.9.9.9'
              patch_note: ~
              requires_intervention: false
        YAML
        file.close
        FileUtils.mkdir_p(dir)
        FileUtils.mv(file.path, path)

        expect do
          described_class.validate!([path])
        end.to raise_error(
          VersionsCoverageValidator::MissingVersionError,
          /matches no entry in RACK_VERSIONS/,
        )
      ensure
        FileUtils.rm_f(path)
      end
    end
  end
end
