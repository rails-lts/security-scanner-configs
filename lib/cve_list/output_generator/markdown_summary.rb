# frozen_string_literal: true

module CveList
  module OutputGenerator
    class MarkdownSummary
      def self.generate_sample_config(patch_list, lts_version, rails_or_rack)
        rails_or_rack = rails_or_rack.capitalize
        items = +''

        patch_list.each do |patch|
          items << if patch.patch_note?
            <<~MARKDOWN
              - #{patch.cve_identifier}
                - #{patch.short_description}
                - NOTE: #{patch.patch_note}

            MARKDOWN
          elsif patch.unaffected?
            <<~MARKDOWN
              - #{patch.cve_identifier}
                - #{patch.short_description}
                - NOTE: #{rails_or_rack} LTS was not affected by this CVE.

            MARKDOWN
          else
            <<~MARKDOWN
              - #{patch.cve_identifier}
                - #{patch.short_description}

            MARKDOWN
          end
        end

        <<~MARKDOWN.delete_suffix("\n\n")
          # List of CVEs addressed by #{rails_or_rack} #{lts_version} LTS

          This is a known list of all known CVEs relevant for #{rails_or_rack} #{lts_version} LTS.

          #{items}
        MARKDOWN
      end
    end
  end
end
