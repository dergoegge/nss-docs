========================
NSS 3.36.8 release notes
========================
--- title: NSS 3.36.8 release notes slug:
Mozilla/Projects/NSS/NSS_3.36.8_release_notes ---

.. _Introduction:

Introduction
------------

Network Security Services (NSS) 3.36.8 is a patch release for NSS 3.36.
The bug fixes in NSS 3.36.8 are described in the "Bugs Fixed" section
below. It was released on 21 June 2019.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_36_8_RTM. NSS 3.36.8 requires NSPR 4.19 or newer.

NSS 3.36.8 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_36_8_RTM/src/

Other releases are available `in NSS
Releases </en-US/docs/Mozilla/Projects/NSS/NSS_Releases>`__.

.. _New_in_NSS_3.36.8:

New in NSS 3.36.8
-----------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

No new functionality is introduced in this release. This is a patch
release to fix bugs.

.. _Bugs_fixed_in_NSS_3.36.8:

Bugs fixed in NSS 3.36.8
------------------------

-  

   .. container::

      `1554336 <https://bugzilla.mozilla.org/show_bug.cgi?id=1554336>`__
      - Optimize away unneeded loop in mpi.c

-  

   .. container::

      `1515342 <https://bugzilla.mozilla.org/show_bug.cgi?id=1515342>`__
      - More thorough input checking
      (`CVE-2019-11729) <https://bugzilla.mozilla.org/show_bug.cgi?id=CVE-2019-11729>`__

-  

   .. container::

      `1540541 <https://bugzilla.mozilla.org/show_bug.cgi?id=1540541>`__
      - Don't unnecessarily strip leading 0's from key material during
      PKCS11 import
      (`CVE-2019-11719 <https://bugzilla.mozilla.org/show_bug.cgi?id=CVE-2019-11719>`__)

.. _Compatibility:

Compatibility
-------------

NSS 3.36.8 shared libraries are backward compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.36.8 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).
