--- title: NSS 3.42 release notes slug:
Mozilla/Projects/NSS/NSS_3.42_release_notes ---

.. _Introduction:

Introduction
------------

The NSS team has released Network Security Services (NSS) 3.42 on 25
January 2019, which is a minor release.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_42_RTM. NSS 3.42 requires NSPR 4.20 or newer.

NSS 3.42 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_42_RTM/src/

Other releases are available `in NSS
Releases </en-US/docs/Mozilla/Projects/NSS/NSS_Releases>`__.

.. _New_in_NSS_3.42:

New in NSS 3.42
---------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

-  `Bug 818686 <https://bugzilla.mozilla.org/show_bug.cgi?id=818686>`__
   - Support XDG basedir specification

.. _New_Functions:

New Functions
^^^^^^^^^^^^^

-  none

.. _Notable_Changes_in_NSS_3.42:

Notable Changes in NSS 3.42
---------------------------

-  The following CA certificates were **Added**:

   -  None

-  The following CA certificates were **Removed**:

   -  None

-  Added support for some of the test cases from the `Wycheproof
   project <https://github.com/google/wycheproof>`__:

   -  `Bug
      1508666 <https://bugzilla.mozilla.org/show_bug.cgi?id=1508666>`__
      - Added AES-GCM test cases

   -  

      .. container:: field indent

         .. container::

            .. container::

               `Bug
               1508673 <https://bugzilla.mozilla.org/show_bug.cgi?id=1508673>`__
               - Added ChaCha20-Poly1305 test cases

   -  

      .. container:: field indent

         .. container::

            .. container::

               `Bug
               1514999 <https://bugzilla.mozilla.org/show_bug.cgi?id=1514999>`__
               - Added the Curve25519 test cases

   -  Thanks to Jonas Allmann for adapting these tests.

.. _Bugs_fixed_in_NSS_3.42:

Bugs fixed in NSS 3.42
----------------------

-  `Bug
   1490006 <https://bugzilla.mozilla.org/show_bug.cgi?id=1490006>`__ -
   Reject invalid CH.legacy_version in TLS 1.3

-  `Bug
   1507135 <https://bugzilla.mozilla.org/show_bug.cgi?id=1507135>`__\ [STRIKEOUT:and]\ `Bug
   1507174 <https://bugzilla.mozilla.org/show_bug.cgi?id=1507174>`__\ [STRIKEOUT:-
   Add additional null checks to several CMS functions to fix a rare CMS
   crash. Thanks to Hanno Böck and Damian Poddebniak for the discovery
   and fixes.] Note: This was mistakenly not in release 3.42, and is
   instead in `NSS
   3.42.1 </en-US/docs/Mozilla/Projects/NSS/NSS_3.42.1_release_notes>`__.

-  

   .. container:: field indent

      .. container::

         .. container::

            `Bug
            1513913 <https://bugzilla.mozilla.org/show_bug.cgi?id=1513913>`__
            - A fix for Solaris where Firefox 60 core dumps during start
            when using profile from version 52

This Bugzilla query returns all the bugs fixed in NSS 3.42:

https://bugzilla.mozilla.org/buglist.cgi?resolution=FIXED&classification=Components&query_format=advanced&product=NSS&target_milestone=3.42

.. _Compatibility:

Compatibility
-------------

NSS 3.42 shared libraries are backward compatible with all older NSS 3.x
shared libraries. A program linked with older NSS 3.x shared libraries
will work with NSS 3.42 shared libraries without recompiling or
relinking. Furthermore, applications that restrict their use of NSS APIs
to the functions listed in NSS Public Functions will remain compatible
with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).
