module CveList
  module Input
    class Parser
      class << self
        def patch_list(group, lts_version)
          lts_version = Gem::Version.new(lts_version) unless lts_version.is_a?(Gem::Version)
          major_version = lts_version.segments[0, 2].join('.')
          patches = []

          Dir["lib/cves/#{group}/*.yml"].each do |cve_path|
            cve = YAML.load_file(cve_path)

            if (patch = patch_for(cve, lts_version)) || (unaffected = unaffected?(cve, lts_version))
              patches << new(
                cve_identifier: cve.fetch('cve_identifier'),
                ghsa_identifier: cve.fetch('ghsa_identifier'),
                snyk_identifiers: cve.fetch('snyk_identifiers'),
                short_description: cve.fetch('short_description'),
                patch_note: patch&.fetch('patch_note'),
                requires_intervention: patch&.fetch('requires_intervention'),
                unaffected: unaffected,
              )
            end
          end

          patches.sort_by { |patch| patch.cve_identifier || patch.snyk_identifiers[0] }
        end

        private

        def patch_for(cve, lts_version)
          cve.fetch('patched').each do |patch|
            return patch if version_satisfies_requirements?(lts_version, patch.fetch('versions'))
          end
          nil
        end

        # Sometimes there is no patch, but LTS is actually not affected in the first place
        def unaffected?(cve, lts_version)
          version_satisfies_requirements?(lts_version, cve.fetch('unaffected_versions'))
        end

        # e.g. ["~ 3.2, < 3.2.24", ">= 4"]
        def version_satisfies_requirements?(version, version_ranges)
          version_ranges.any? do |version_range|
            Gem::Requirement.new(version_range.split(/,\s*/)).satisfied_by?(version)
          end
        end
      end

      attr_reader :cve_identifier, :snyk_identifiers, :short_description, :patch_note, :ghsa_identifier, :unaffected, :requires_intervention

      def initialize(cve_identifier:, snyk_identifiers:, short_description:, ghsa_identifier:, requires_intervention:, unaffected: nil, patch_note: nil)
        @cve_identifier = cve_identifier
        @snyk_identifiers = snyk_identifiers
        @ghsa_identifier = ghsa_identifier
        @short_description = short_description
        @patch_note = patch_note
        @unaffected = unaffected
        @requires_intervention = requires_intervention
      end

      def patch_note?
        !@patch_note.nil?
      end

      def unaffected?
        !!@unaffected
      end

      def requires_intervention?
        !!@requires_intervention
      end

      def snyk_only?
        @cve_identifier.nil?
      end
    end
  end
end
