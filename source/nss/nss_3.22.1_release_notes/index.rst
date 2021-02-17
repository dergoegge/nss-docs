========================
NSS 3.22.1 release notes
========================
.. _Introduction:

Introduction
------------

Network Security Services (NSS) 3.22.1 is a patch release for NSS 3.22.
The bug fixes in NSS 3.22.1 are described in the "Notable Changes"
section below.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_22_1_RTM. NSS 3.22.1 requires NSPR 4.12 or newer.

NSS 3.22.1 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_22_1_RTM/src/

.. _New_in_NSS_3.22.1:

New in NSS 3.22.1
-----------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

No new functionality is introduced in this release.

.. _Notable_Changes_in_NSS_3.22.1:

Notable Changes in NSS 3.22.1
-----------------------------

-  `bug
   1194680 <https://bugzilla.mozilla.org/show_bug.cgi?id=1194680>`__:
   NSS has been changed to use the PR_GetEnvSecure function that was
   made available in NSPR 4.12

.. _Compatibility:

Compatibility
-------------

NSS 3.22.1 shared libraries are backward compatible with all older NSS
3.22 shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.22.1 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).
