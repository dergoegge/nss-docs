======================
NSS 3.61 release notes
======================
.. _Introduction:

Introduction
------------

The NSS team released Network Security Services (NSS) 3.61 on **22
January 2021**, which is a minor release.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_61_RTM. NSS 3.61 requires NSPR 4.29 or newer.

NSS 3.61 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_61_RTM/src/

Other releases are available `in NSS
Releases </en-US/docs/Mozilla/Projects/NSS/NSS_Releases>`__.

.. _Bugs_fixed_in_NSS_3.61:

Bugs fixed in NSS 3.61
----------------------

-  Bug 1682071 - Fix issue with IKE Quick mode deriving incorrect key
   values under certain conditions.
-  Bug 1684300 - Fix default PBE iteration count when NSS is compiled
   with NSS_DISABLE_DBM.
-  Bug 1651411 - Improve constant-timeness in RSA operations.
-  Bug 1677207 - Upgrade Google Test version to latest release.
-  Bug 1654332 - Add aarch64-make target to nss-try.

This Bugzilla query returns all the bugs fixed in NSS 3.61:

https://bugzilla.mozilla.org/buglist.cgi?resolution=FIXED&classification=Components&query_format=advanced&product=NSS&target_milestone=3.61

.. _Compatibility:

Compatibility
-------------

NSS 3.61 shared libraries are backwards-compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.61 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report on
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).