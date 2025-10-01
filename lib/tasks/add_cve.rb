# frozen_string_literal: true

require 'rake'

module CveList
  class CveTemplate

    attr_reader :cve, :path

    def initialize
      @cve = ask_for_cve
      @lib = ask('rails_lts or rack: ')
      @path = File.join('lib/cves', @lib, "#{cve}.yml")
    end

    def generate
      File.write path, <<~YML
        # TODO: Please update this file carefully, then remove this whole comment.
        #
        # Choose a short description like "XSS vulnerability in ActionPack's Basic Authentication".
        # List unaffected versions as "unaffected".
        # List affected (unpatched) versions as "affected".
        # List patched versions as "patched", each with metadata as shown below.
        # You may add a short `patch_note` that will be printed to the generated files.
        # If a patch needs additional steps to be performed, set `requires_intervention: true`.
        #
        # Note: If intervention is required, the CVE will NOT be listed as patched, but commented out, together with the patch note.

        cve_identifier: #{cve}
        snyk_identifiers:
          - TODO
        ghsa_identifier: TODO
        short_description: TODO
        unaffected_versions:
          - TODO
        affected_versions:
          - TODO
        patched:
          - versions: ['TODO']
            patch_note: ~
            requires_intervention: false
      YML
    end

    private

    def ask_for_cve
      ask('CVE identifier: ').tap do |answer|
        abort 'Invalid CVE identifier' unless answer.match? /CVE-\d{4}-\d+/
      end
    end

    def ask(text)
      print text
      $stdin.gets.strip
    end
  end
end

desc 'Generate a new CVE Yaml file (with placeholders)'
task :add_cve do
  template = CveList::CveTemplate.new

  template.generate
  puts
  puts "> Metadata file for #{template.cve} created."
  puts '> Now open that file and fill in all information.'
end
