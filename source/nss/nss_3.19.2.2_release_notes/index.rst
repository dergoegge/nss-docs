.. _Mozilla_Projects_NSS_NSS_3_19_2_2_release_notes:

==========================
NSS 3.19.2.2 release notes
==========================
.. _Introduction:

Introduction
------------

Network Security Services (NSS) 3.19.2.2 is a security patch release for NSS 3.19.2. The bug fixes
in NSS 3.19.2.2 are described in the "Security Fixes" section below.

(Current users of NSS 3.19.3 or NSS 3.19.4 are advised to update to `NSS
3.20.2 </en-US/docs/Mozilla/Projects/NSS/NSS_3.20.2_release_notes>`__, `NSS
3.21 </en-US/docs/Mozilla/Projects/NSS/NSS_3.21_release_notes>`__, or a later release.)

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_19_2_2_RTM. NSS 3.19.2.2 requires NSPR 4.10.10 or newer.

NSS 3.19.2.2 source distributions are available on ftp.mozilla.org for secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_19_2_2_RTM/src/

.. _Security_Fixes_in_NSS_3.19.2.2:

Security Fixes in NSS 3.19.2.2
------------------------------

-  `Bug 1158489 <https://bugzilla.mozilla.org/show_bug.cgi?id=1158489>`__
   ` <https://bugzilla.mozilla.org/show_bug.cgi?id=1138554>`__ /
   `CVE-2015-7575 <http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-7575>`__ - Prevent MD5
   Downgrade in TLS 1.2 Signatures.

.. _New_in_NSS_3.19.2.2:

New in NSS 3.19.2.2
-------------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

No new functionality is introduced in this release.

.. _Acknowledgements:

Acknowledgements
----------------

The NSS development team would like to thank Karthikeyan Bhargavan from `INRIA <http://inria.fr/>`__
for responsibly disclosing the issue in `Bug
1158489 <https://bugzilla.mozilla.org/show_bug.cgi?id=1158489>`__.

.. _Compatibility:

Compatibility
-------------

NSS 3.19.2.2 shared libraries are backward compatible with all older NSS 3.x shared libraries. A
program linked with older NSS 3.x shared libraries will work with NSS 3.19.2.2 shared libraries
without recompiling or relinking. Furthermore, applications that restrict their use of NSS APIs to
the functions listed in NSS Public Functions will remain compatible with future versions of the NSS
shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__ (product NSS).