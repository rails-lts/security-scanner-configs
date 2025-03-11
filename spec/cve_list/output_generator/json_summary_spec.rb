# frozen_string_literal: true

RSpec.describe CveList::OutputGenerator::JsonSummary do
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
    it 'generates a JSON summary file' do
      expect(JSON.parse(described_class.generate_sample_config(patch_list, '5.2.8.23', :rails))).to eq(JSON.parse(<<-JSON))
        [
           {
             "cve_identifier": "CVE-2012-1099",
             "ghsa_identifier": "GHSA-2xjj-5x6h-8vmf",
             "snyk_identifiers": "SNYK-RUBY-ACTIONPACK-20024, SNYK-RUBY-ACTIONPACK-20025",
             "short_description": "XSS in select tag options",
             "patch_note": null,
             "requires_intervention": false,
             "unaffected": false,
             "gem": "rails"
           },
           {
             "cve_identifier": "CVE-2012-1100",
             "ghsa_identifier": "GHSA-2xjj-5x6h-8vmf",
             "snyk_identifiers": "SNYK-RUBY-ACTIONPACK-20026",
             "short_description": "DoS in Rack",
             "patch_note": "Fixed in Rails 5.2 LTS's version of Rack",
             "requires_intervention": false,
             "unaffected": false,
             "gem": "rails"
           },
           {
             "cve_identifier": "CVE-2012-1101",
             "ghsa_identifier": "GHSA-2xjj-5x6h-8vmf",
             "snyk_identifiers": "SNYK-RUBY-ACTIONPACK-20026",
             "short_description": "Unfixable thing",
             "patch_note": "Please write safe code",
             "requires_intervention": true,
             "unaffected": false,
             "gem": "rails"
           }
         ]
      JSON
    end
  end
end
