# frozen_string_literal: true

module CveList
  class VersionsCoverageValidator
    MissingVersionError = Class.new(StandardError)

    GROUP_VERSIONS = {
      'rails_lts' => LTS_VERSIONS,
      'rack' => RACK_VERSIONS,
    }.freeze

    class << self
      def validate!(files)
        files.each { |path| validate_file!(path) }
      end

      private

      def validate_file!(path)
        group = path.include?('/rails_lts/') ? 'rails_lts' : 'rack'
        known_versions = GROUP_VERSIONS.fetch(group)
        cve = YAML.load_file(path)
        cve_identifier = cve.fetch('cve_identifier')
        constants_name = if group == 'rails_lts'
          'LTS_VERSIONS'
        else
          'RACK_VERSIONS'
        end

        cve.fetch('patched').each do |patch|
          versions = patch.fetch('versions')
          next if versions.empty?

          versions.each do |version_range|
            next if matching_versions(version_range, known_versions).any?

            raise MissingVersionError,
                  "#{cve_identifier}: patched version '#{version_range}' matches no entry in #{constants_name} — add it to lib/cve_list/versions.rb"
          end
        end
      end

      def matching_versions(version_range, known_versions)
        requirement = Gem::Requirement.new(version_range.split(/,\s*/))
        known_versions
          .map { |version| Gem::Version.new(version) }
          .select { |version| requirement.satisfied_by?(version) }
      end
    end
  end
end
