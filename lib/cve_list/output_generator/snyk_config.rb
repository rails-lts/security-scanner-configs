# frozen_string_literal: true

module CveList
  module OutputGenerator
    class SnykConfig
      def self.generate_sample_config(patch_list, _lts_version, rails_or_rack)
        rails_or_rack = rails_or_rack.capitalize
        ignores = +''

        patch_list.each do |patch|
          patch.snyk_identifiers.each do |snyk_identifier|
            ignores << if patch.patch_note?
              if patch.requires_intervention?
                <<~IGNORE
                  # PLEASE CHECK #{patch.patch_note}
                  # #{snyk_identifier}:
                  #   - '*':
                  #       reason: Fixed in #{rails_or_rack} LTS
                  #       expires: false
                IGNORE
              else
                <<~IGNORE
                  # NOTE #{patch.patch_note}
                  #{snyk_identifier}:
                    - '*':
                        reason: Fixed in #{rails_or_rack} LTS
                        expires: false
                IGNORE
              end
            elsif patch.unaffected?
              <<~IGNORE
                #{snyk_identifier}:
                  - '*':
                      reason: Does not affect #{rails_or_rack} LTS
                      expires: false
              IGNORE
            else
              <<~IGNORE
                #{snyk_identifier}:
                  - '*':
                      reason: Fixed in #{rails_or_rack} LTS
                      expires: false
              IGNORE
            end
          end
        end

        <<~CONFIG
          # Snyk (https://snyk.io) policy file, patches or ignores known vulnerabilities.
          version: v1.25.0
          ignore:
            #{ignores.lines.map { |line| line.prepend(' ' * 2) }.join.strip}
          patch: {}
        CONFIG
      end
    end
  end
end
