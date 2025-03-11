# frozen_string_literal: true

module CveList
  module OutputGenerator
    class BundlerAuditConfig
      def self.generate_sample_config(patch_list, _lts_version, _rails_or_rack)
        ignores = +''

        patch_list.each do |patch|
          ignores << if patch.patch_note?
            if patch.requires_intervention?
              "# - #{patch.cve_identifier} # (PLEASE CHECK: #{patch.patch_note})\n"
            else
              "- #{patch.cve_identifier} # (NOTE: #{patch.patch_note})\n"
            end
          else
            "- #{patch.cve_identifier}\n"
          end
        end

        if patch_list.length > 0
          <<~YAML
            ---
            ignore:
              #{ignores.lines.map { |line| line.prepend(' ' * 2) }.join.strip}
          YAML
        else
          <<~YAML
            ---
            ignore: []
          YAML
        end
      end
    end
  end
end
