# frozen_string_literal: true

module CveList
  module Input
    RSpec.describe Parser do
      describe '.patch_list' do
        it 'includes patches fixed in a certain CVE version' do
          patch_list = described_class.patch_list('rails_lts', '5.2.8.15')

          expect(patch_list.find { |patch| patch.cve_identifier == 'CVE-2022-27777' }).to have_attributes(
            cve_identifier: 'CVE-2022-27777',
            snyk_identifiers: ['SNYK-RUBY-ACTIONVIEW-2803851'],
            short_description: 'XSS in ActionView (see https://mailchi.mp/railslts/rails-lts-possible-xss-vulnerabilities-in-actionview-actionpack-cve-2022-22577-cve-2022-27777 and https://mailchi.mp/railslts/rails-lts-bug-fix-for-recent-security-fix-forcve-2022-27777 for more details)',
            patch_note: nil,
          )

          expect(patch_list.find { |patch| patch.cve_identifier == 'CVE-2023-22792' }).to have_attributes(
            cve_identifier: 'CVE-2023-22792',
            snyk_identifiers: ['SNYK-RUBY-ACTIONPACK-3237232'],
            short_description: 'ReDoS in ActionPack',
            patch_note: 'Please consider to upgrade to 5.2.8.16 instead, this release has a bug',
          )
        end

        it 'includes CVEs that do not affect a LTS version' do
          patch_list = described_class.patch_list('rails_lts', '2.3.18.19')
          expect(patch_list.map(&:cve_identifier)).to include('CVE-2014-0080')
        end

        it 'does not CVEs that do not affect a *different* LTS version' do
          patch_list = described_class.patch_list('rails_lts', '5.2.8.15')
          expect(patch_list.map(&:cve_identifier)).not_to include('CVE-2014-0080')
        end

        it 'does not include patches fixed in later versions' do
          patch_list = described_class.patch_list('rails_lts', '5.2.8.15')
          expect(patch_list.map(&:cve_identifier)).not_to include('CVE-2022-44570')
        end
      end
    end
  end
end
