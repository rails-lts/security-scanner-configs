# List of vulnerabilities addressed by Rails 2.3.18.60 LTS

This is a known list of all known vulnerabilities relevant for Rails 2.3.18.60 LTS.

- CVE-2011-1497
  - XSS in auto_link method
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2011-2931
  - XSS in strip_tags
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2011-4319
  - Cross-site Scripting vulnerability in i18n translations helper method
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-1099
  - XSS in select tag options

- CVE-2012-2660
  - Unsafe Query Generation in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-2661
  - SQL injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-2694
  - Unsafe Query Generation in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-2695
  - SQL injection in ActiveRecord

- CVE-2012-3424
  - DoS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-3463
  - XSS in form_tag_helper.rb
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2012-3464
  - XSS in ActiveSupport

- CVE-2012-3465
  - XSS in sanitize_helper.rb

- CVE-2012-6496
  - SQL injection in ActiveRecord

- CVE-2013-0155
  - Unsafe Query generation in ActiveRecord

- CVE-2013-0156
  - Arbitrary code execution in ActionPack

- CVE-2013-0276
  - attr_protected protection bypass

- CVE-2013-0277
  - Arbitrary code execution in serialize helper

- CVE-2013-1854
  - DoS in ActiveRecord

- CVE-2013-1855
  - XSS in ActionPack

- CVE-2013-1857
  - XSS in ActionPack

- CVE-2013-3221
  - Data injection in ActiveRecord
  - NOTE: https://mailchi.mp/railslts/rails-lts-improvement-for-unsafe-sql-practices-with-mysql-and-rails-2-or-3-cve-2013-3221 for more details.

- CVE-2013-4491
  - XSS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-6414
  - DoS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-6415
  - XSS in ActionPack

- CVE-2013-6416
  - XSS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2013-6417
  - Fix for CVE-2013-0155

- CVE-2014-0080
  - Data injection in postgres array columns
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-0081
  - XSS in ActionPack

- CVE-2014-0082
  - DoS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-0130
  - Directory traversal in ActionPack

- CVE-2014-3482
  - SQL injection in ActiveRecord

- CVE-2014-3483
  - SQL injectin in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-3514
  - Arbitrary data injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2014-7818
  - Directory traversal in ActionPack

- CVE-2014-7829
  - Directory traversal in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-1840
  - CSRF in jquery_ujs.js
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-3224
  - Bypass whitelisted_ips in web_console
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-3226
  - XSS in ActiveSupport
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-3227
  - DoS in ActiveSupport

- CVE-2015-7576
  - Timing attack in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-7577
  - Vulnerability in nested_attributes.rb
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-7578
  - XSS in rails-html-sanitizer
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-7579
  - XSS in rails-html-sanitizer
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-7580
  - XSS in rails-html-sanitizer
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2015-7581
  - DoS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2016-0751
  - DoS in ActionPack

- CVE-2016-0752
  - Directory traversal in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2016-0753
  - Input validation bypass in ActiveModel

- CVE-2016-2097
  - Information exposure in ActionView

- CVE-2016-2098
  - Arbitrary code execution in ActionPack

- CVE-2016-6316
  - XSS in ActionView

- CVE-2016-6317
  - Unsafe query generation in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2018-16476
  - Access control vulnerability in ActiveJob
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2018-16477
  - Bypass vulnerability in ActiveStorage
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2018-3760
  - Directory traversal in sprockets
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2019-16782
  - Possible information leak / session hijack vulnerability

- CVE-2019-5418
  - File content disclosure vulnerability in ActionView

- CVE-2019-5419
  - DoS in ActionView

- CVE-2019-5420
  - Remote code execution in railties
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-15169
  - XSS in ActionView

- CVE-2020-5267
  - XSS in ActionView

- CVE-2020-8151
  - Information Disclosure in ActiveResource

- CVE-2020-8162
  - ActiveStorage Bug
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8163
  - Remote code execution in ActionView

- CVE-2020-8164
  - Information exposure in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8165
  - Unintended unmarshalling in MemCacheStore/RedisCacheStore
  - NOTE: If you see "POTENTIAL UNSAFE USE OF `CACHE.READ`" in your rails log, potential code changes are required (see https://mailchi.mp/railslts/rails-lts-potential-remote-code-execution-of-user-provided-local-names-cve-2020-5042374)

- CVE-2020-8166
  - CSRF in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8167
  - CSRF in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22880
  - ReDos in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22885
  - Information exposure in ActionPack (see https://mailchi.mp/railslts/rails-ltsmultiple-vulnerabilities-in-rails-cve-2021-22885-cve-2021-22904 for more details)
  - NOTE: Contains a potentially breaking change https://makandracards.com/railslts/498656-using-strings-in-polymorphic-helpers-cve-2021-22885, see https://mailchi.mp/railslts/rails-ltsmultiple-vulnerabilities-in-rails-cve-2021-22885-cve-2021-22904 for more information.

- CVE-2021-22902
  - ReDos in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22903
  - CVE-2021-22903
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22904
  - DoS in ActionPack (see https://mailchi.mp/railslts/rails-ltsmultiple-vulnerabilities-in-rails-cve-2021-22885-cve-2021-22904 for more details)
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2022-21831
  - Arbitrary code execution in ActiveStorage  (see https://mailchi.mp/railslts/rails-lts-potential-cross-request-information-exposure-cve-2022-23633-in-rails-5-lts for more information)
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2022-22577
  - XSS in ActionPack (see https://mailchi.mp/railslts/rails-lts-possible-xss-vulnerabilities-in-actionview-actionpack-cve-2022-22577-cve-2022-27777 for more information)
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2022-23633
  - Information exposure in ActionPack (see https://mailchi.mp/railslts/rails-lts-potential-cross-request-information-exposure-cve-2022-23633-in-rails-5-lts for more details)
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2022-27777
  - XSS in ActionView (see https://mailchi.mp/railslts/rails-lts-possible-xss-vulnerabilities-in-actionview-actionpack-cve-2022-22577-cve-2022-27777 and https://mailchi.mp/railslts/rails-lts-bug-fix-for-recent-security-fix-forcve-2022-27777 for more details)

- CVE-2022-31163
  - Directory traversal in tzinfo (see https://mailchi.mp/railslts/rails-lts-potential-path-traversal-and-code-execution-vulnerability-in-tzinfo-cve-2022-31163 from more information)

- CVE-2022-32224
  - Remote code execution in ActiveRecord
  - NOTE: Merged upstream bug fix for Psych >= 2.0 (which requires Ruby >= 1.9) for possible RCE escalation bug with Serialized Columns in Active Record. We tried to make it less of a breaking change than the official patch by adding a default set of permitted serializable classes. Note this patch has no effect for Rubies < 2.1, see https://makandracards.com/railslts/521762-change-to-activerecord-deserialization-cve-2022-32224 for more details.

- CVE-2022-3704
  - XSS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2022-44566
  - DOS vulnerability in the PostgreSQL adapter for ActiveRecord
  - NOTE: ActiveRecord will now throw an exception, if you pass an integer > 64bit. You can opt out using the config described in https://mailchi.mp/railslts/rails-lts-multiple-dos-vulnerabilities-in-rails-rack-and-globalid.

- CVE-2023-22792
  - ReDoS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22794
  - SQL injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22795
  - ReDoS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22796
  - ReDoS in ActiveSupport

- CVE-2023-22797
  - Open redirect in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22799
  - ReDos in global_id fixed in globalid >= 1.0.1. See https://mailchi.mp/railslts/rails-lts-multiple-dos-vulnerabilities-in-rails-rack-and-globalid for more details.
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-23913
  - This vulnerability affects the jquery-ujs / prototype-ujs / rails-ujs gems / npm packages which are not part of Rails LTS itself
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-28120
  - Fixed XSS issue with `SafeBuffer#bytesplice` (only on Ruby 3.2, which is not currently supported), see https://mailchi.mp/railslts/rails-lts-multiple-vulnerabilities-in-rails-and-rack) for more details
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-28362
  - Possible XSS vulnerability via User Supplied Values to redirect_to, see https://mailchi.mp/railslts/rails-lts-patches-for-redos-vulnerabilities-in-time-and-uri-cve-2033-28755-cve-2023-8759969 for more details

- CVE-2023-28755
  - Added monkey patches to address ReDoS vulnerabilities in the  `uri` stdlibs, see [here](https://mailchi.mp/railslts/rails-lts-patches-for-redos-vulnerabilities-in-time-and-uri-cve-2033-28755-cve-2023-28756) for more details

- CVE-2023-28756
  - Added monkey patches to address ReDoS vulnerabilities in the `time` stdlibs, see [here](https://mailchi.mp/railslts/rails-lts-patches-for-redos-vulnerabilities-in-time-and-uri-cve-2033-28755-cve-2023-28756) for more details

- CVE-2023-38037
  - Fixed a possible local file disclosure of encrypted files with ActiveSupport::EncryptedFile, see https://mailchi.mp/railslts/rails-lts-patches-for-redos-vulnerabilities-in-time-and-uri-cve-2033-28755-cve-2023-8759969 for more details
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

- CVE-2024-41128
  - ReDoS in ActionDispatch's query parameter filter
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-47887
  - ReDoS in ActionController's HTTP authentication
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-47888
  - ReDoS vulnerability in ActionText
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-47889
  - ReDoS vulnerability in the block_format ActionMailer helper

- CVE-2024-53847
  - XSS in Trix/ActionText
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-54133
  - Content Security Policy bypass in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2025-24293
  - ActiveStorage potential unsafe transformation methods
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2025-55193
  - ANSI escape injection in ActiveRecord

- CVE-2026-33167
  - Rails has a possible XSS vulnerability in its Action Pack debug exceptions
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-33170
  - Rails Active Support has a possible XSS vulnerability in SafeBuffer#%
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-33173
  - Rails Active Storage has possible content type bypass via metadata in direct uploads
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-33174
  - Rails Active Storage has a possible DoS vulnerability when in proxy mode via Range requests
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-33195
  - Rails Active Storage has possible Path Traversal in DiskService
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-33202
  - Rails Active Storage has possible glob injection in its DiskService
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2026-66066
  - Arbitrary file read and remote code execution in ActiveStorage
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-2gff-2mmg-m73p
  - Possible IP spoofing in Action Dispatch RemoteIp (Rails 8.1 only)
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-2p2f-4rq4-gjwc
  - Possible XSS vulnerability in Action View text helpers
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-2w9f-fxwj-w2qf
  - Possible XSS vulnerability in Active Support MessagePack serializer (Rails 8.1 only)
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-3f4q-8x5m-76v8
  - Possible local file disclosure in Active Storage video previews and analysis
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-3w93-6hmw-whh4
  - Unsigned Content-Type in Active Storage GCS direct uploads with cache_control
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-4v2w-w6g6-f8f8
  - Possible DoS vulnerability in Active Storage proxy mode via storage errors during streaming
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-5957-c7qm-m469
  - Possible signature replay in Action Mailbox Mailgun ingress
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-68p9-83h6-5wpj
  - Possible XSS vulnerability in Action View tag helpers
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-8474-xrp6-wh69
  - Possible DoS vulnerability in Active Support safe_constantize
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-f3w6-w445-fwh9
  - Possible arbitrary file write and read in Active Storage image analysis
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-gmj8-hvj3-49mw
  - Missing SameSite attribute on session cookies from Action Pack session stores
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-hfr4-8rjc-97m2
  - Possible circumvention of file size limits in Active Storage direct uploads to Google Cloud Storage
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-p2pm-g2h6-7j5j
  - Possible DoS vulnerability in Active Storage filename handling
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-rq8q-p985-fjq7
  - Possible XSS vulnerability in Action View strip_tags
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-rwvh-fw6r-pwvp
  - Possible DoS vulnerability in Action Controller Live streaming
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-v6rj-xm57-3p59
  - Possible XSS vulnerability in Action View highlight helper
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-v924-7rp8-4mxh
  - Possible arbitrary file read and remote code execution in Active Storage video previews, analysis and image processing
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-wm3x-v3qw-4jh3
  - Possible Strong Parameters bypass in Parameters#each_key in Action Pack
  - NOTE: Rails LTS was not affected by this CVE.

- GHSA-x6mj-8jx9-qhqv
  - Possible sensitive session information leak in Active Storage proxy mode
  - NOTE: Rails LTS was not affected by this CVE.
