# frozen_string_literal: true

module CveList
  module Input
    class NewCveFiles
      CVE_PATH = 'lib/cves/'

      class << self
        def detect
          return all_cve_files if validate_all?

          return [] unless git_repo?

          (
            untracked_files +
            added_files_since(base_ref)
          ).uniq.select { |path| path.end_with?('.yml') && File.exist?(path) }
        end

        private

        def validate_all?
          ENV['VALIDATE_CVES_ALL'] == '1'
        end

        def all_cve_files
          Dir['lib/cves/**/*.yml']
        end

        def git_repo?
          system('git rev-parse --is-inside-work-tree >/dev/null 2>&1')
        end

        def untracked_files
          git_lines("git ls-files --others --exclude-standard -- #{CVE_PATH}")
        end

        def added_files_since(base)
          git_lines("git diff --name-only --diff-filter=A #{base} -- #{CVE_PATH}")
        end

        def base_ref
          if system('git rev-parse --verify origin/main >/dev/null 2>&1')
            `git merge-base HEAD origin/main`.strip
          else
            'HEAD'
          end
        end

        def git_lines(command)
          `#{command}`.split("\n").map(&:strip).reject(&:empty?)
        end
      end
    end
  end
end
