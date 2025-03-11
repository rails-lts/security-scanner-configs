# frozen_string_literal: true

module CveList
  module OutputGenerator
    class JsonSummary
      def self.generate_sample_config(patch_list, _lts_version, rails_or_rack)
        patch_list = patch_list.map do |patch|
          {
            cve_identifier: patch.cve_identifier,
            ghsa_identifier: patch.ghsa_identifier,
            snyk_identifiers: patch.snyk_identifiers.join(', '),
            short_description: patch.short_description,
            patch_note: patch.patch_note,
            requires_intervention: patch.requires_intervention?,
            unaffected: patch.unaffected?,
            gem: rails_or_rack,
          }
        end

        JSON.pretty_generate(patch_list)
      end
    end
  end
end
