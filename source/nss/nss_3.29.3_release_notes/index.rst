.. _Mozilla_Projects_NSS_NSS_3.29.3_release_notes:

========================
NSS 3.29.3 release notes
========================
.. _Introduction:

Introduction
------------

Network Security Services (NSS) 3.29.3 is a patch release for NSS 3.29.
The bug fixes in NSS 3.29.3 are described in the "Bugs Fixed" section
below.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_29_3_RTM. NSS 3.29.3 requires NSPR 4.13.1 or newer.

NSS 3.29.3 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_29_3_RTM/src/

.. _New_in_NSS_3.29.3:

New in NSS 3.29.3
-----------------

No new functionality is introduced in this release.

.. _Notable_Changes_in_NSS_3.29.3:

Notable Changes in NSS 3.29.3
-----------------------------

-  A rare crash when initializing an SSL socket fails has been fixed.

.. _Bugs_fixed_in_NSS_3.29.3:

Bugs fixed in NSS 3.29.3
------------------------

`Bug 1342358 - Crash in
tls13_DestroyKeyShares <https://bugzilla.mozilla.org/show_bug.cgi?id=1342358>`__

.. _Compatibility:

Compatibility
-------------

NSS 3.29.3 shared libraries are backward compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.29.3 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).