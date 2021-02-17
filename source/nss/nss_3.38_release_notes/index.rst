======================
NSS 3.38 release notes
======================
.. _Introduction:

Introduction
------------

The NSS team has released Network Security Services (NSS) 3.38, which is
a minor release.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_38_RTM. NSS 3.38 requires NSPR 4.19 or newer.

NSS 3.38 source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_38_RTM/src/

.. _New_in_NSS_3.38:

New in NSS 3.38
---------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

-  Added support for the TLS Record Size Limit Extension.
-  When creating a certificate request (CSR) using certutil -R, an
   existing orphan private key can be reused. Parameter -k may be used
   to specify the ID of an existing orphan key. The available orphan key
   IDs can be displayed using command certutil -K.
-  When using certutil -O to print the chain for a given certificate
   nickname, the new parameter --simple-self-signed may be provided,
   which can avoid ambiguous output in some scenarios.

.. _New_Functions:

New Functions
^^^^^^^^^^^^^

-  *in secitem.h*

   -  **SECITEM_MakeItem** - Allocate and make an item with the
      requested contents

.. _New_Macros:

New Macros
^^^^^^^^^^

-  *in ssl.h*

   -  **SSL_RECORD_SIZE_LIMIT** - used to control the TLS Record Size
      Limit Extension

.. _Notable_Changes_in_NSS_3.38:

Notable Changes in NSS 3.38
---------------------------

-  Fixed
   `CVE-2018-0495 <https://nvd.nist.gov/vuln/detail/CVE-2018-0495>`__ in
   `bug
   1464971 <https://bugzilla.mozilla.org/show_bug.cgi?id=1464971>`__.

-  Various security fixes in the ASN.1 code.

-  NSS automatically enables caching for SQL database storage on Linux,
   if it is located on a network filesystem that's known to benefit from
   caching.

-  When repeatedly importing the same certificate into an SQL database,
   the existing nickname will be kept.

.. _Bugs_fixed_in_NSS_3.38:

Bugs fixed in NSS 3.38
----------------------

This Bugzilla query returns all the bugs fixed in NSS 3.38:

https://bugzilla.mozilla.org/buglist.cgi?resolution=FIXED&classification=Components&query_format=advanced&product=NSS&target_milestone=3.38

.. _Compatibility:

Compatibility
-------------

NSS 3.38 shared libraries are backward compatible with all older NSS 3.x
shared libraries. A program linked with older NSS 3.x shared libraries
will work with NSS 3.38 shared libraries without recompiling or
relinking. Furthermore, applications that restrict their use of NSS APIs
to the functions listed in NSS Public Functions will remain compatible
with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).