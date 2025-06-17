# frozen_string_literal: true

require 'open3'

RSpec.describe 'bundle-audit' do

  def bundle_audit(lockfile_path, config_path: nil)
    command = +'bundle-audit check --format json'
    command << " --gemfile-lock #{lockfile_path}"
    command << " --config #{config_path}" if config_path

    JSON.parse(`#{command}`)
  end

  context 'Rack 1.4.7.x (Rack for Rails LTS 2.3 & 3.2)' do

    context '1.4.7.17' do
      it 'every reported CVE with matching ignorefile is vulnerable' do
        results = bundle_audit(
          'spec/fixtures/rack/rack_1_4_7_17.lock',
          config_path: 'configs/rack/1_4_7_17/.bundler-audit.yml',
        ).fetch('results')

        reported_cves = results.select { _1['gem']['name'] == 'rack' }.map { _1.dig('advisory', 'id') }

        expect(reported_cves).to include(
          'CVE-2019-16782', # exception: This is fixed in the Rails LTS cves
          'CVE-2024-25126', # This is fixed in Rack 1.4.7.18
          'CVE-2024-26141', # This is fixed in Rack 1.4.7.18
        )
      end
    end

    context '1.4.7.21' do
      it 'every reported CVE with matching ignorefile is vulnerable' do
        results = bundle_audit(
          'spec/fixtures/rack/rack_1_4_7_21.lock',
          config_path: 'configs/rack/1_4_7_21/.bundler-audit.yml',
        ).fetch('results')

        reported_cves = results.select { _1['gem']['name'] == 'rack' }.map { _1.dig('advisory', 'id') }

        expect(reported_cves).to include(
          'CVE-2019-16782', # exception: This is fixed in the Rails LTS cves
        )
      end
    end
  end

  context 'Rack 1.6.13.x (Rack for Rails LTS 4.2)' do
    it 'rack 1.6.13.12 every reported CVE with matching ignorefile is vulnerable' do
      results = bundle_audit(
        'spec/fixtures/rack/rack_1_6_13_12.lock',
        config_path: 'configs/rack/1_6_13_12/.bundler-audit.yml',
      ).fetch('results')

      reported_cves = results.select { _1['gem']['name'] == 'rack' }.map { _1.dig('advisory', 'id') }

      expect(reported_cves).to include(
        'CVE-2022-44571',
        'CVE-2024-26146',
        'CVE-2024-26141',
        'CVE-2023-27530',
        'CVE-2023-27539',
        'CVE-2024-25126',
      )
    end
  end

  context 'Rails LTS 2.3' do
    let(:cve) { 'CVE-2023-22796' }

    context 'without ignorefile' do
      it 'reports the CVE-2023-22796' do
        results = bundle_audit('spec/fixtures/Gemfile_2_3_with_ruby_3_1.lock').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == cve }).not_to eq(nil)
      end
    end

    context 'with ignorefile' do
      it 'does not report the CVE-2023-22796' do
        results = bundle_audit('spec/fixtures/Gemfile_2_3_with_ruby_3_1.lock', config_path: 'configs/rails_lts/2_3_18_54/.bundler-audit.yml').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == cve }).to eq(nil)
      end
    end
  end

  context 'Rails LTS 3.2' do
    let(:cve) { 'CVE-2023-22796' }

    context 'without ignorefile' do
      it 'reports the CVE-2023-22796' do
        results = bundle_audit('spec/fixtures/Gemfile_3_2_with_ruby_3_1.lock').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == cve }).not_to eq(nil)
      end
    end

    context 'with ignorefile' do
      it 'does not report the CVE-2023-22796' do
        results = bundle_audit('spec/fixtures/Gemfile_3_2_with_ruby_3_1.lock', config_path: 'configs/rails_lts/3_2_22_46/.bundler-audit.yml').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == cve }).to eq(nil)
      end
    end
  end

  context 'Rails LTS 4.2' do
    let(:cve) { 'CVE-2023-22799' }

    context 'without ignorefile' do
      it 'reports the CVE-2023-22799' do
        results = bundle_audit('spec/fixtures/Gemfile_4_2_with_ruby_3_1.lock').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == cve }).not_to eq(nil)
      end
    end

    context 'with ignorefile' do
      it 'does not report the CVE-2023-22799' do
        results = bundle_audit('spec/fixtures/Gemfile_4_2_with_ruby_3_1.lock', config_path: 'configs/rails_lts/4_2_11_36/.bundler-audit.yml').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == cve }).to eq(nil)
      end
    end
  end

  context 'Rails LTS 5.2' do
    context 'without ignorefile' do
      it 'reports the CVE-2023-28362' do
        results = bundle_audit('spec/fixtures/Gemfile_5_2_with_ruby_3_1.lock').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == 'CVE-2023-28362' }).not_to eq(nil)
      end
    end

    context 'with ignorefile' do
      it 'does not report the CVE-2022-27777' do
        results = bundle_audit('spec/fixtures/Gemfile_5_2_with_ruby_3_1.lock', config_path: 'configs/rails_lts/5_2_8_23/.bundler-audit.yml').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == 'CVE-2022-27777' }).to eq(nil)
      end

      it 'still reports vulnerabilities with patch notes like CVE-2023-23913' do
        results = bundle_audit('spec/fixtures/Gemfile_5_2_with_ruby_3_1.lock', config_path: 'configs/rails_lts/5_2_8_23/.bundler-audit.yml').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == 'CVE-2023-23913' }).not_to eq(nil)
      end
    end
  end

  context 'Rails LTS 6.1' do
    context 'without ignorefile' do
      it 'reports the CVE-2024-54133' do
        results = bundle_audit('spec/fixtures/Gemfile_6_1_with_ruby_3_1.lock').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == 'CVE-2024-54133' }).not_to eq(nil)
      end
    end

    context 'with ignorefile' do
      it 'does not report CVE-2024-54133' do
        results = bundle_audit('spec/fixtures/Gemfile_6_1_with_ruby_3_1.lock', config_path: 'configs/rails_lts/6_1_7_21/.bundler-audit.yml').fetch('results')

        expect(results.find { |result| result.dig('advisory', 'id') == 'CVE-2024-54133' }).to eq(nil)
      end
    end
  end
end
