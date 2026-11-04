# List of vulnerabilities addressed by Rails 7.2.4.11 LTS

This is a known list of all known vulnerabilities relevant for Rails 7.2.4.11 LTS.

- CVE-2012-1099
  - XSS in select tag options
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-2695
  - SQL injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-3464
  - XSS in ActiveSupport
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-3465
  - XSS in sanitize_helper.rb
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-6496
  - SQL injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-0155
  - Unsafe Query generation in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-0156
  - Arbitrary code execution in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-0276
  - attr_protected protection bypass
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-0277
  - Arbitrary code execution in serialize helper
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-1854
  - DoS in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-1855
  - XSS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-1857
  - XSS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-0081
  - XSS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-0130
  - Directory traversal in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-3482
  - SQL injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-7818
  - Directory traversal in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-3227
  - DoS in ActiveSupport
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-7579
  - XSS in rails-html-sanitizer
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8166
  - CSRF in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8167
  - CSRF in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22902
  - ReDos in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22903
  - CVE-2021-22903
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22794
  - SQL injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22797
  - Open redirect in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-26142
  - ReDoS vulnerability in ActionDispatch
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-26143
  - XSS vulnerability in ActionController
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-26144
  - Session information leak in ActiveStorage
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-28103
  - Permissions-Policy is Only Served on HTML Content-Type
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-32464
  - XSS vulnerability in Trix
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-34341
  - Arbitrary code execution in Trix
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-53847
  - XSS in Trix/ActionText
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-33167
  - Rails has a possible XSS vulnerability in its Action Pack debug exceptions
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-33174
  - Rails Active Storage has a possible DoS vulnerability when in proxy mode via Range requests
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-66066
  - Arbitrary file read and remote code execution in ActiveStorage

- GHSA-2586-8ghr-69fj
  - Possible restoration of destroyed sessions in Action Dispatch CacheStore
  - NOTE: The Dalli-based MemCacheStore has the same pattern; use Dalli >= 4.0.

- GHSA-2gff-2mmg-m73p
  - Possible IP spoofing in Action Dispatch RemoteIp (Rails 8.1 only)
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-2p2f-4rq4-gjwc
  - Possible XSS vulnerability in Action View text helpers
  - NOTE: The upstream fix needs Nokogiri >= 1.19.5 (Ruby 3.2+). Update Nokogiri where possible; on older Nokogiri, highlight and simple_format fall back to the HTML4 sanitizer.

- GHSA-2w9f-fxwj-w2qf
  - Possible XSS vulnerability in Active Support MessagePack serializer (Rails 8.1 only)
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-3f4q-8x5m-76v8
  - Possible local file disclosure in Active Storage video previews and analysis

- GHSA-3w93-6hmw-whh4
  - Unsigned Content-Type in Active Storage GCS direct uploads with cache_control

- GHSA-4v2w-w6g6-f8f8
  - Possible DoS vulnerability in Active Storage proxy mode via storage errors during streaming
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-5957-c7qm-m469
  - Possible signature replay in Action Mailbox Mailgun ingress

- GHSA-68p9-83h6-5wpj
  - Possible XSS vulnerability in Action View tag helpers

- GHSA-8474-xrp6-wh69
  - Possible DoS vulnerability in Active Support safe_constantize

- GHSA-f3w6-w445-fwh9
  - Possible arbitrary file write and read in Active Storage image analysis

- GHSA-gmj8-hvj3-49mw
  - Missing SameSite attribute on session cookies from Action Pack session stores

- GHSA-hfr4-8rjc-97m2
  - Possible circumvention of file size limits in Active Storage direct uploads to Google Cloud Storage
  - NOTE: Browsers now send x-goog-content-length-range on direct uploads to Google Cloud Storage, so the bucket CORS configuration must allow that header.

- GHSA-p2pm-g2h6-7j5j
  - Possible DoS vulnerability in Active Storage filename handling

- GHSA-r9jg-fmfx-2gv6
  - Possible cache poisoning in Action Pack content negotiation

- GHSA-rq8q-p985-fjq7
  - Possible XSS vulnerability in Action View strip_tags

- GHSA-rwvh-fw6r-pwvp
  - Possible DoS vulnerability in Action Controller Live streaming

- GHSA-v6rj-xm57-3p59
  - Possible XSS vulnerability in Action View highlight helper

- GHSA-v924-7rp8-4mxh
  - Possible arbitrary file read and remote code execution in Active Storage video previews, analysis and image processing

- GHSA-wm3x-v3qw-4jh3
  - Possible Strong Parameters bypass in Parameters#each_key in Action Pack

- GHSA-x6mj-8jx9-qhqv
  - Possible sensitive session information leak in Active Storage proxy mode
