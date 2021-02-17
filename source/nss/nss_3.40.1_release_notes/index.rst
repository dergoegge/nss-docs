========================
NSS 3.40.1 release notes
========================
.. _Introduction:

Introduction
------------

The NSS team has released Network Security Services (NSS) 3.40.1, which
is a patch release for NSS 3.40

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_40_1_RTM. NSS 3.40.1 requires NSPR 4.20 or newer.

NSS 3.40 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_40_1_RTM/src/

.. _New_in_NSS_3.40.1:

New in NSS 3.40.1
-----------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

-  No new functionality is introduced in this release. This is a patch
   release to fix CVE-2018-12404

.. _New_Functions:

New Functions
^^^^^^^^^^^^^

-  none

.. _Bugs_fixed_in_NSS_3.40.1:

Bugs fixed in NSS 3.40.1
------------------------

-  

   .. container:: field indent

      .. container::

         `Bug
         1485864 <https://bugzilla.mozilla.org/show_bug.cgi?id=1485864>`__
         - Cache side-channel variant of the Bleichenbacher attack
         (CVE-2018-12404)

.. _Compatibility:

Compatibility
-------------

NSS 3.40.1 shared libraries are backward compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.40.1 shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).