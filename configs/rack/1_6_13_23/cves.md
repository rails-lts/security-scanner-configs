# List of CVEs addressed by Rack 1.6.13.23 LTS

This is a known list of all known CVEs relevant for Rack 1.6.13.23 LTS.

- CVE-2018-16471
  - XSS in Rack

- CVE-2020-8161
  - Directory traversal in Rack

- CVE-2020-8184
  - CSRF in Rack

- CVE-2022-30122
  - ReDos in Rack

- CVE-2022-30123
  - Shell escape sequence injection vulnerability in Rack

- CVE-2022-44570
  - ReDos in Rack

- CVE-2022-44571
  - ReDos in Rack

- CVE-2022-44572
  - ReDos in Rack
  - NOTE: Rack LTS was not affected by this CVE.

- CVE-2023-27530
  - Backported fix for Rack to address a potential DoS attack with rack multipart requests

- CVE-2023-27539
  - Backported fix for DoS vulnerability in Rack, see https://mailchi.mp/railslts/rails-lts-multiple-vulnerabilities-in-rails-and-rack for more details

- CVE-2024-25126
  - ReDoS vulnerability in Rack

- CVE-2024-26141
  - DoS vulnerability in Rack

- CVE-2024-26146
  - ReDoS vulnerability in Rack

- CVE-2025-25184
  - Possible log injection in Rack

- CVE-2025-27111
  - Possible log injection in Rack

- CVE-2025-27610
  - Local file inclusion in `Rack::Static`

- CVE-2025-32411
  - `Rack::Session::Pool` middleware may restore deleted sessions

- CVE-2025-46727
  - Rack has an Unbounded-Parameter DoS in Rack::QueryParser

- CVE-2025-49007
  - Rack has an Unbounded-Parameter DoS in Rack::QueryParser

- CVE-2025-59830
  - Params Limit Bypass in Rack
  - NOTE: Rack LTS was not affected by this CVE.

- CVE-2025-61770
  - Rack's unbounded multipart preamble buffering enables DoS (memory exhaustion)

- CVE-2025-61771
  - Rack's multipart parser buffers large non‑file fields entirely in memory, enabling DoS (memory exhaustion)

- CVE-2025-61772
  - Rack's multipart parser buffers unbounded per-part headers, enabling DoS (memory exhaustion)
