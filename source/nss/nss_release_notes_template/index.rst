--- title: NSS release notes template slug:
Mozilla/Projects/NSS/NSS_release_notes_template ---

.. _DRAFT_(remove_line_when_document_is_finished):

*DRAFT (remove line when document is finished)*
-----------------------------------------------

.. _Introduction:

Introduction
------------

| The NSS team has released Network Security Services (NSS) 3.XX, which
  is a minor release.
| or
| Network Security Services (NSS) 3.XX.y is a patch release for NSS
  3.XX. The bug fixes in NSS 3.XX.y are described in the "Bugs Fixed"
  section below.

.. _Distribution_Information:

Distribution Information
------------------------

The HG tag is NSS_3_XX_RTM. NSS 3.XX requires NSPR 4.XX or newer.

NSS 3.XX source distributions are available on ftp.mozilla.org for
secure HTTPS download:

-  Source tarballs:
   https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_XX_RTM/src/
   (make a link)

.. _New_in_NSS_3.XX:

New in NSS 3.XX
---------------

.. _New_Functionality:

New Functionality
~~~~~~~~~~~~~~~~~

either:

No new functionality is introduced in this release. This is a patch
release to fix ...

or:

-  ...

.. _New_Functions:

New Functions
^^^^^^^^^^^^^

-  *in \___.h*

   -  **function** - description

.. _New_Types:

New Types
^^^^^^^^^

-  *in \___.h*

   -  **type** - description.

.. _New_Macros:

New Macros
^^^^^^^^^^

-  *in \___.h*

   -  **macro** - description

.. _Notable_Changes_in_NSS_3.XX:

Notable Changes in NSS 3.XX
---------------------------

-  ...

.. _Bugs_fixed_in_NSS_3.XX:

Bugs fixed in NSS 3.XX
----------------------

This Bugzilla query returns all the bugs fixed in NSS 3.XX:

https://bugzilla.mozilla.org/buglist.cgi?resolution=FIXED&classification=Components&query_format=advanced&product=NSS&target_milestone=3.XX
(make a link)

.. _Acknowledgements:

Acknowledgements
----------------

The NSS development team would like to thank ... for responsibly
disclosing the issue by providing advance copies of their research.

.. _Compatibility:

Compatibility
-------------

NSS 3.XX.y shared libraries are backward compatible with all older NSS
3.x shared libraries. A program linked with older NSS 3.x shared
libraries will work with NSS 3.XX.y shared libraries without recompiling
or relinking. Furthermore, applications that restrict their use of NSS
APIs to the functions listed in NSS Public Functions will remain
compatible with future versions of the NSS shared libraries.

.. _Feedback:

Feedback
--------

Bugs discovered should be reported by filing a bug report with
`bugzilla.mozilla.org <https://bugzilla.mozilla.org/enter_bug.cgi?product=NSS>`__
(product NSS).
