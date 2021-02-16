========================
NSS 3.60.1 release notes
========================
--- title: NSS 3.60.1 release notes slug:
Mozilla/Projects/NSS/NSS_3.60.1_release_notes ---

.. _Introduction:

Introduction
------------

The NSS team released Network Security Services (NSS) 3.60.1 on **4
January 2021**, which is a patch release for NSS 3.60.

.. _Distribution_information:

Distribution information
------------------------

The HG tag is NSS_3_60_1_RTM. NSS 3.60.1 requires NSPR 4.29 or newer.

NSS 3.60.1 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_60_1_RTM/src/

Other releases are available at `NSS past
releases </en-US/docs/Mozilla/Projects/NSS/NSS_Releases#past_releases>`__.

.. _Bugs_fixed_in_NSS_3.60.1:

Bugs fixed in NSS 3.60.1
------------------------

-  `Bug
   1682863 <https://bugzilla.mozilla.org/show_bug.cgi?id=1682863>`__ -
   Fix remaining hang issues with slow third-party PKCS #11 tokens.

.. _Compatibility:

Compatibility
-------------

NSS 3.60.1 shared libraries are backwards-compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.60.1 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report at
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
under the NSS product.
