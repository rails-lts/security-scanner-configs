# List of vulnerabilities addressed by Rails 5.2.6.11 LTS

This is a known list of all known vulnerabilities relevant for Rails 5.2.6.11 LTS.

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

- CVE-2016-0751
  - DoS in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2016-0753
  - Input validation bypass in ActiveModel
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2016-2097
  - Information exposure in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2016-2098
  - Arbitrary code execution in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2016-6316
  - XSS in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2019-16782
  - Possible information leak / session hijack vulnerability
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2019-5418
  - File content disclosure vulnerability in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2019-5419
  - DoS in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-15169
  - XSS in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-5267
  - XSS in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8163
  - Remote code execution in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8165
  - Unintended unmarshalling in MemCacheStore/RedisCacheStore
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8166
  - CSRF in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2020-8167
  - CSRF in ActionView
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22885
  - Information exposure in ActionPack (see https://mailchi.mp/railslts/rails-ltsmultiple-vulnerabilities-in-rails-cve-2021-22885-cve-2021-22904 for more details)
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22902
  - ReDos in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22903
  - CVE-2021-22903
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2021-22904
  - DoS in ActionPack (see https://mailchi.mp/railslts/rails-ltsmultiple-vulnerabilities-in-rails-cve-2021-22885-cve-2021-22904 for more details)
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2022-23633
  - Information exposure in ActionPack (see https://mailchi.mp/railslts/rails-lts-potential-cross-request-information-exposure-cve-2022-23633-in-rails-5-lts for more details)

- CVE-2022-31163
  - Directory traversal in tzinfo (see https://mailchi.mp/railslts/rails-lts-potential-path-traversal-and-code-execution-vulnerability-in-tzinfo-cve-2022-31163 from more information)
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22794
  - SQL injection in ActiveRecord
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-22797
  - Open redirect in ActionPack
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2023-23913
  - This vulnerability affects the jquery-ujs / prototype-ujs / rails-ujs gems / npm packages which are not part of Rails LTS itself
  - NOTE: Unfixed when using the rails-ujs npm package. Fixed for the bundled `rails-ujs` package for version >= 5.2.8.17. See https://makandracards.com/railslts/541192-installation-instructions-rails-ujs-jquery-ujs.

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

- CVE-2024-47888
  - ReDoS vulnerability in ActionText
  - NOTE: Rails LTS was not affected by this CVE.

- CVE-2024-53847
  - XSS in Trix/ActionText
  - NOTE: Rails LTS was not affected by this CVE.
