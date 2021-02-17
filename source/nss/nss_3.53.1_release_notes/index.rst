.. _Mozilla_Projects_NSS_NSS_3.53.1_release_notes:

========================
NSS 3.53.1 release notes
========================
.. _Introduction:

Introduction
------------

The NSS team has released Network Security Services (NSS) 3.53.1 on **16
June 2020**. This is a security patch release.

Thank you to Sohaib ul Hassan, Billy Bob Brumley, and the Network and
Information Security Group (NISEC) at Tampere University for reporting
this issue and providing a patch.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_53_1_RTM. NSS 3.53.1 requires NSPR 4.25 or newer.

NSS 3.53.1 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_53_1_RTM/src/

Other releases are available `in NSS
Releases </en-US/docs/Mozilla/Projects/NSS/NSS_Releases>`__.

.. _New_in_NSS_3.53.1:

New in NSS 3.53.1
-----------------

No new functionality is introduced in this release.

.. _Bugs_fixed_in_NSS_3.53.1:

Bugs fixed in NSS 3.53.1
------------------------

-  `CVE-2020-12402 <https://bugzilla.mozilla.org/show_bug.cgi?id=CVE-2020-12402>`__
   - Use constant-time GCD and modular inversion in MPI.

.. _Compatibility:

Compatibility
-------------

NSS 3.53.1 shared libraries are backward compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.53.1 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).