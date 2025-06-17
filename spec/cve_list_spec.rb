# frozen_string_literal: true

RSpec.describe CveList do

  # Sanity check for all cve data files
  Dir['lib/cves/**/*.yml'].each do |cve_path|
    it "#{cve_path} has the correct format" do
      cve = YAML.load_file(cve_path)

      expect(cve).to have_key('cve_identifier')
      # there's a single snyk id that doesn't have an official cve id
      expect(cve['cve_identifier']).to eq(File.basename(cve_path, '.yml')).or(be_nil)

      expect(cve).to have_key('snyk_identifiers')
      expect(cve['snyk_identifiers']).to be_a(Array)

      expect(cve).to have_key('ghsa_identifier')
      # there's a single snyk id that doesn't have an official cve id
      expect(cve['ghsa_identifier']).to be_a(String).or(be_nil)

      expect(cve).to have_key('short_description')
      expect(cve['short_description']).to be_a(String)

      expect(cve).to have_key('unaffected_versions')
      expect(cve['unaffected_versions']).to be_a(Array)

      expect(cve).to have_key('affected_versions')
      expect(cve['affected_versions']).to be_a(Array)

      expect(cve).to have_key('patched')
      expect(cve['patched']).to be_a(Array)

      if cve['patched'].any?
        expect(cve['patched'][0]).to have_key('versions')
        expect(cve['patched'][0]['versions']).to be_a(Array)

        # is required to be set explicitly to ~ (nil), or a note
        expect(cve['patched'][0]).to have_key('patch_note')
        expect(cve['patched'][0]['patch_note']).to be_a(String).or(eq(nil))

        expect(cve['patched'][0]).to have_key('requires_intervention')
        expect(cve['patched'][0]['requires_intervention']).to eq(true).or(eq(false))
      end
    end
  end


  context 'lts cves' do
    def expand_versions(items)
      items.flat_map do |item|
        requirements_to_lts_versions(item.split(/,\s?/))
      end
    end

    # e.g. ["~> 2.3", "=< 2.3.5"]
    # Gem::Requirement doesn't allow some combinations e.g. ["~> 2.3", "~ 3.2"]
    def requirements_to_lts_versions(requirements)
      return [] if requirements == []

      requirement = Gem::Requirement.new(requirements)
      CveList::LTS_VERSIONS
        .map { |v| Gem::Version.new(v) }
        .select { |v| requirement.satisfied_by?(v) }
    end

    def expand_rack_versions(items)
      items.flat_map do |item|
        requirements_to_rack_lts_versions(item.split(/,\s?/))
      end
    end

    # e.g. ["~> 2.3", "=< 2.3.5"]
    # Gem::Requirement doesn't allow some combinations e.g. ["~> 2.3", "~ 3.2"]
    def requirements_to_rack_lts_versions(requirements)
      return [] if requirements == []

      requirement = Gem::Requirement.new(requirements)
      CveList::RACK_VERSIONS
        .map { |v| Gem::Version.new(v) }
        .select { |v| requirement.satisfied_by?(v) }
    end

    # rails lts
    Dir['lib/cves/rails_lts/*'].each do |cve_path|
      it "#{cve_path} contains at least one rails lts version, and no duplicates" do
        cve = YAML.load_file(cve_path)

        all_yaml_versions = []
        all_yaml_versions += expand_versions(cve.fetch('unaffected_versions'))
        all_yaml_versions += expand_versions(cve.fetch('affected_versions'))
        all_yaml_versions += cve.fetch('patched').flat_map { |patched_entry| expand_versions(patched_entry.fetch('versions')) }

        expect(all_yaml_versions.size).to be > 0
        duplicates = all_yaml_versions.select { |v| all_yaml_versions.count(v) > 1 }
        expect(duplicates).to eq([])
      end
    end

    # rack lts
    Dir['lib/cves/rack/*'].each do |cve_path|
      it "#{cve_path} contains at least one rack lts version and no duplicates" do
        cve = YAML.load_file(cve_path)

        all_yaml_versions = []
        all_yaml_versions += expand_rack_versions(cve.fetch('unaffected_versions'))
        all_yaml_versions += expand_rack_versions(cve.fetch('affected_versions'))
        all_yaml_versions += cve.fetch('patched').flat_map { |patched_entry| expand_rack_versions(patched_entry.fetch('versions')) }

        expect(all_yaml_versions.size).to be > 0
        duplicates = all_yaml_versions.select { |v| all_yaml_versions.count(v) > 1 }
        expect(duplicates).to eq([])
      end
    end
  end
end
