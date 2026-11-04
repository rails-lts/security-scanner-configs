# List of vulnerabilities addressed by Rack 2.2.25.10 LTS

This is a known list of all known vulnerabilities relevant for Rack 2.2.25.10 LTS.

- CVE-2022-44570
  - ReDos in Rack

- CVE-2022-44571
  - ReDos in Rack

- CVE-2022-44572
  - ReDos in Rack

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

- CVE-2025-59830
  - Params Limit Bypass in Rack
  - NOTE: Rack LTS was not affected by this CVE.

- CVE-2025-61770
  - Rack's unbounded multipart preamble buffering enables DoS (memory exhaustion)

- CVE-2025-61771
  - Rack's multipart parser buffers large non‑file fields entirely in memory, enabling DoS (memory exhaustion)

- CVE-2025-61772
  - Rack's multipart parser buffers unbounded per-part headers, enabling DoS (memory exhaustion)

- CVE-2025-61780
  - Rack has a Possible Information Disclosure Vulnerability

- CVE-2025-61919
  - Unbounded read in Rack::Request form parsing can lead to memory exhaustion

- CVE-2026-22860
  - Directory traversal in Rack::Directory

- CVE-2026-25500
  - XSS in Rack::Directory

- CVE-2026-26961
  - Non-RFC-conformant handling of Multipart request boundaries

- CVE-2026-26962
  - Possible mishandling of filenames in multipart requests

- CVE-2026-34230
  - Denial of Service in Rack when using Rack::Deflater middleware

- CVE-2026-34763
  - Possible leak of root directory name in Rack::Directory

- CVE-2026-34785
  - Possible directory traversal in Rack::Static

- CVE-2026-34786
  - Possible Incorrect setting of HTTP headers in Rack::Static

- CVE-2026-34826
  - Possible Denial of Service in Rack handling of Range headers

- CVE-2026-34829
  - Possible Denial of Service for multipart requests

- CVE-2026-34830
  - Incorrect handling of X-Accel-Mapping in Rack::SendFile

- CVE-2026-34831
  - Possible Invalid Content-Length header in Rack::Files

- CVE-2026-34835
  - Missing validation of RFC-conformity of Host Header

- GHSA-2j8w-xcrc-x985
  - Rack::Request#host_with_port and

- GHSA-5v64-555j-wjxm
  - Multipart parser retains parsed data in its scan buffer, allowing denial of service via memory exhaustion

- GHSA-p8x9-v4hv-2w4g
  - Multipart boundary guard skips a leading empty or quoted boundary parameter, allowing parser differentials and WAF bypass

- GHSA-wvg4-6p58-3gh3
  - Rack::Static header_rules bypass via unnormalized dot segments in the request path
