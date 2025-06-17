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
