# frozen_string_literal: true

require 'rake'

module CveList
  module NewCVE
    extend self

    module Template
      def self.render(cve_identifier:, short_description:)
        todo = '<TODO>'
        <<~YML
          cve_identifier: #{cve_identifier}
          snyk_identifiers:
          - #{todo}
          ghsa_identifier: #{todo}
          short_description: #{short_description}
          unaffected_versions: []
          affected_versions: []
          patched:
            - versions:
              patch_note: ~
              requires_intervention: false

          # Versions that have a patch_note hint are not ignored by default. They are added as a comment to the ignore files.
          # You can add multiple versions with different patch notes.
          #
          # Sort every version as either unaffected, affected or patched.
          #
          # unaffected: The Rails LTS version is not affected and has not been patched
          # affected: The Rails LTS version is affected, but not patched
          # patched: The Rails LTS version is patched
          #
          # #{CveList::LTS_VERSIONS.map { "# - #{_1}" }.join("\n")}
        YML
      end
    end

    def run
      cve_identifier = ask_for_cve
      short_description = ask_for_short_description(cve_identifier)

      path = "lib/cves/#{cve_identifier}.yml"
      File.write(path, Template.render(cve_identifier:, short_description:))
      puts "Written #{path}"
    end

    private

    def ask_for_cve
      ask('Please enter the CVE identifer (e.g. CVE-2023-28362): ').tap do |answer|
        abort 'Invalid CVE identifier' unless answer.match? /CVE-\d{4}-\d+/
      end
    end

    def ask_for_short_description(cve_identifier)
      ask("A short the description for #{cve_identifier} (e.g. 'A XSS vulnerability in ActionPack's Basic Authentication.'): ")
    end

    def ask(text)
      print text
      $stdin.gets.strip
    end
  end
end

desc 'Generate a new cve-???.yml file'
task :new_cve do
  CveList::NewCVE.run
end
