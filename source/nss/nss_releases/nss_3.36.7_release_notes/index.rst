.. _Mozilla_Projects_NSS_NSS_3_36_7_release_notes:

========================
NSS 3.36.7 release notes
========================
.. _Introduction:

Introduction
------------

Network Security Services (NSS) 3.36.7 is a patch release for NSS 3.36.
The bug fixes in NSS 3.36.7 are described in the "Bugs Fixed" section
below. It was released on 19 January 2019.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_36_7_RTM. NSS 3.36.7 requires NSPR 4.19 or newer.

NSS 3.36.7 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_36_7_RTM/src/

Other releases are available :ref:`Mozilla_Projects_NSS_NSS_Releases`.

.. _New_in_NSS_3.36.7:

New in NSS 3.36.7
-----------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

No new functionality is introduced in this release. This is a patch
release to fix bugs.

.. _Bugs_fixed_in_NSS_3.36.7:

Bugs fixed in NSS 3.36.7
------------------------

-  `Bug
   1507135 <https://bugzilla.mozilla.org/show_bug.cgi?id=1507135>`__ and
   `Bug
   1507174 <https://bugzilla.mozilla.org/show_bug.cgi?id=1507174>`__ -
   Add additional null checks to several CMS functions to fix a rare CMS
   crash. Thanks to Hanno Böck and Damian Poddebniak for the discovery
   and fixes.
   (`CVE-2018-18508 <https://bugzilla.mozilla.org/show_bug.cgi?id=CVE-2018-18508>`__)

.. _Compatibility:

Compatibility
-------------

NSS 3.36.7 shared libraries are backward compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.36.7 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).