========================
NSS 3.21.3 release notes
========================
--- title: NSS 3.21.3 release notes slug:
Mozilla/Projects/NSS/NSS_3.21.3_release_notes ---

.. _Introduction:

Introduction
------------

Network Security Services (NSS) 3.21.3 is a security patch release for
NSS 3.21.2. The bug fixes in NSS 3.21.3 are described in the "Security
Fixes" section below.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_21_3_RTM. NSS 3.21.3 requires NSPR 4.10.10 or newer.

NSS 3.21.3 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_21_3_RTM/src/

.. _New_in_NSS_3.21.3:

New in NSS 3.21.3
-----------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

No new functionality is introduced in this release.

.. _Security_Fixes_in_NSS_3.21.3:

Security Fixes in NSS 3.21.3
----------------------------

-  `Bug
   1306103 <https://bugzilla.mozilla.org/show_bug.cgi?id=1306103>`__ /
   `CVE-2016-5285 <http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-5285>`__
   - Fixed a possible DOS on NSS servers due to a missing NULL check.
-  `Bug 1221620 <https://bugzil.la/1221620>`__ - Fixed a possible
   left-shift of a negative integer value when parsing DER.
-  `Bug
   1206283 <https://bugzilla.mozilla.org/show_bug.cgi?id=1206283>`__ -
   Fixed an out-of-bound read when parsing invalid UTF-16.
-  `Bug
   1241034 <https://bugzilla.mozilla.org/show_bug.cgi?id=1241034>`__ -
   Fixed an out-of-bounds write when parsing invalid UTF-16.
-  `Bug
   1241037 <https://bugzilla.mozilla.org/show_bug.cgi?id=1241037>`__ -
   Fixed bogus surrogate detection when parsing invalid UTF-16.

.. _Compatibility:

Compatibility
-------------

NSS 3.21.3 shared libraries are backward compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.21.3 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).
