# frozen_string_literal: true

module CveList
  module Input

    RSpec.describe NewCveFiles do
      describe '.detect' do
        it 'returns no files on a clean checkout without new CVE files' do
          skip 'Not a git repository' unless described_class.send(:git_repo?)

          added = described_class.send(:added_files_since, described_class.send(:base_ref))
          untracked = described_class.send(:untracked_files)

          if added.empty? && untracked.empty?
            expect(described_class.detect).to eq([])
          else
            skip 'Working tree has new CVE files'
          end
        end

        it 'returns all CVE files when VALIDATE_CVES_ALL is set' do
          old_value = ENV.fetch('VALIDATE_CVES_ALL', nil)
          ENV['VALIDATE_CVES_ALL'] = '1'

          expect(described_class.detect).to match_array(Dir['lib/cves/**/*.yml'])
        ensure
          old_value.nil? ? ENV.delete('VALIDATE_CVES_ALL') : ENV['VALIDATE_CVES_ALL'] = old_value
        end

        it 'returns an empty array when not inside a git repository' do
          allow(described_class).to receive(:git_repo?).and_return(false)

          expect(described_class.detect).to eq([])
        end

        it 'includes untracked CVE files' do
          file = Tempfile.new(['CVE-NEW', '.yml'], 'lib/cves/rails_lts')
          file.write("cve_identifier: CVE-NEW\n")
          file.close
          path = file.path

          allow(described_class).to receive(:git_repo?).and_return(true)
          allow(described_class).to receive(:untracked_files).and_return([path])
          allow(described_class).to receive(:added_files_since).and_return([])

          expect(described_class.detect).to eq([path])
        ensure
          FileUtils.rm_f(path) if defined?(path) && path
        end

        it 'includes files added since the base ref' do
          file = Tempfile.new(['CVE-NEW', '.yml'], 'lib/cves/rack')
          file.write("cve_identifier: CVE-NEW\n")
          file.close
          path = file.path

          allow(described_class).to receive(:git_repo?).and_return(true)
          allow(described_class).to receive(:untracked_files).and_return([])
          allow(described_class).to receive(:added_files_since).with('abc123').and_return([path])
          allow(described_class).to receive(:base_ref).and_return('abc123')

          expect(described_class.detect).to eq([path])
        ensure
          FileUtils.rm_f(path) if defined?(path) && path
        end
      end
    end

  end
end
