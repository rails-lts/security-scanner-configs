# frozen_string_literal: true

RSpec.describe CveList::OutputGenerator::BundlerAuditConfig do
  let(:patch_list) do
    [
      CveList::Input::Parser.new(
        cve_identifier: 'CVE-2012-1099',
        snyk_identifiers: ['SNYK-RUBY-ACTIONPACK-20024', 'SNYK-RUBY-ACTIONPACK-20025'],
        short_description: 'XSS in select tag options',
        ghsa_identifier: 'GHSA-2xjj-5x6h-8vmf',
        patch_note: nil,
        requires_intervention: false,
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
    it 'generates a base bundler-audit config file' do
      expect(described_class.generate_sample_config(patch_list, '5.2.8.23', :rails)).to eq(<<~YAML)
        ---
        ignore:
          - CVE-2012-1099
          - CVE-2012-1100 # (NOTE: Fixed in Rails 5.2 LTS's version of Rack)
          # - CVE-2012-1101 # (PLEASE CHECK: Please write safe code)
      YAML
    end
  end
end
