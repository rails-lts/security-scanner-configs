# frozen_string_literal: true

RSpec.describe CveList::OutputGenerator::MarkdownSummary do
  let(:patch_list) do
    [
      CveList::Input::Parser.new(
        cve_identifier: 'CVE-2012-1099',
        snyk_identifiers: ['SNYK-RUBY-ACTIONPACK-20024', 'SNYK-RUBY-ACTIONPACK-20025'],
        short_description: 'XSS in select tag options',
        ghsa_identifier: 'GHSA-2xjj-5x6h-8vmf',
        patch_note: nil,
        requires_intervention: false,
        unaffected: true,
      ),
      CveList::Input::Parser.new(
        cve_identifier: 'CVE-2012-1100',
        snyk_identifiers: ['SNYK-RUBY-ACTIONPACK-20026'],
        short_description: 'DoS in Rack',
        ghsa_identifier: 'GHSA-2xjj-5x6h-8vmf',
        patch_note: "Fixed in Rails 5.2 LTS's version of Rack",
        requires_intervention: false,
      ),
      CveList::Input::Parser.new(
        cve_identifier: 'CVE-2012-1101',
        snyk_identifiers: ['SNYK-RUBY-ACTIONPACK-20026'],
        short_description: 'Unfixable thing',
        ghsa_identifier: 'GHSA-2xjj-5x6h-8vmf',
        patch_note: 'Please write safe code',
        requires_intervention: true,
      ),
    ]
  end

  describe '.generate_sample_config' do
    it 'generates a markdown summary file' do
      expect(described_class.generate_sample_config(patch_list, '5.2.8.23', :rails)).to eq(<<~MARKDOWN)
        # List of CVEs addressed by Rails 5.2.8.23 LTS

        This is a known list of all known CVEs relevant for Rails 5.2.8.23 LTS.

        - CVE-2012-1099
          - XSS in select tag options
          - NOTE: Rails LTS was not affected by this CVE.

        - CVE-2012-1100
          - DoS in Rack
          - NOTE: Fixed in Rails 5.2 LTS's version of Rack

        - CVE-2012-1101
          - Unfixable thing
          - NOTE: Please write safe code
      MARKDOWN
    end
  end
end
