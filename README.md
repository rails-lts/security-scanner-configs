# Sample configurations for third-party tooling with Rails LTS

This repository contains sample configurations for third-party tracking tools used with [Rails LTS](https://railslts.com).

## Why?

If you're using Rails LTS in conjunction with an automatic dependency scanner, you may encounter false positives. These occur when the checker reports a vulnerability that has already been patched by Rails LTS. Unforunately, since we are not the "owner" of the various Rails gems (and since Rails LTS is not open source), we cannot mark these vulnerabilities as "fixed" in Rails LTS.

To address this, we recommend configuring your dependency checker to ignore such false positives. This repository contains always up-to-date lists of vulnerabilities fixed in Rails LTS, in various formats suitable for dependency scanners, as well as human readable formats.

## How to use this repository

Each Rails LTS and each Rack version has a dedicated [configuration folder](configs/) containing all available configurations.

For each version, we provide the following files:

* .bundler-audit.yml for [bundler-audit](https://github.com/rubysec/bundler-audit)
* .snyk for [Snyk](https://snyk.io/)
* cves.json for custom tooling
* cves.md for documentation

These files can be used as a starting point to configure your dependency scanner, or for any automation.

We currently do not provide an automated tool to merge these configurations.

### Example

Suppose you are installing Rails 2.3.18.59 LTS and Rack 1.4.7.20 and you are using bundler audit.

In this case you can simply merge https://raw.githubusercontent.com/rails-lts/security-scanner-configs/refs/heads/main/configs/rails_lts/2_3_18_59/.bundler-audit.yml and https://raw.githubusercontent.com/rails-lts/security-scanner-configs/refs/heads/main/configs/rack/1_4_7_20/.bundler-audit.yml into one file and put it into your project, to automatically ignore all CVEs fixed by that version of Rails LTS.

Note that some entries in that file will contain additional comments, in the rare case you need to take further action.

When you update to a new version, override the file.

In case you have you have an existing .bundler-audit.yml, you would have to merge these files manually.

## Further information

Please also see our [official documenation](https://makandracards.com/railslts).

If you encounter any issues, [please contact us via email](mailto:railslts-maintainers@makandra.de).
