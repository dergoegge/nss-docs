==========
FC_GetInfo
==========
--- title: FC_GetInfo slug: Mozilla/Projects/NSS/Reference/FC_GetInfo
tags: - NSS ---

.. _Name:

Name
~~~~

FC_GetInfo - return general information about the PKCS #11 library.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV  FC_GetInfo(CK_INFO_PTR pInfo);

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_GetInfo`` has one parameter:

``pInfo``
   points to a `CK_INFO </en-US/CK_INFO>`__ structure

.. _Description:

Description
~~~~~~~~~~~

``FC_GetInfo`` returns general information about the PKCS #11 library.
On return, the ``CK_INFO`` structure that ``pInfo`` points to has the
following information:

-  ``cryptokiVersion``: PKCS #11 interface version number implemented by
   the PKCS #11 library. The version is 2.20
   (``major=0x02, minor=0x14``).
-  ``manufacturerID``: the PKCS #11 library manufacturer, "Mozilla
   Foundation", padded with spaces to 32 characters and not
   null-terminated.
-  ``flags``: should be 0.
-  ``libraryDescription``: description of the library, "NSS Internal
   Crypto Services", padded with spaces to 32 characters and not
   null-terminated.
-  ``libraryVersion``: PKCS #11 library version number, for example,
   3.11 (``major=0x03, minor=0x0b``).

A user may call ``FC_GetInfo`` without logging into the token (to assume
the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_GetInfo`` always returns ``CKR_OK``.

.. note::

   ``FC_GetInfo`` should return ``CKR_ARGUMENTS_BAD`` if ``pInfo`` is
   ``NULL``.

   ``FC_GetInfo`` should return ``CKR_CRYPTOKI_NOT_INITIALIZED`` if the
   library is not initialized.

.. _Examples:

Examples
~~~~~~~~

Note the use of the ``%.32s`` format string to print the
``manufacturerID`` and ``libraryDescription`` members of the ``CK_INFO``
structure.

.. code:: eval

   #include <assert.h>
   #include <stdio.h>

   CK_FUNCTION_LIST_PTR pFunctionList;
   CK_RV crv;
   CK_INFO info;

   crv = FC_GetFunctionList(&pFunctionList);
   assert(crv == CKR_OK);

   ...

   /* invoke FC_GetInfo as pFunctionList->C_GetInfo */
   crv = pFunctionList->C_GetInfo(&info);
   assert(crv == CKR_OK);
   printf("General information about the PKCS #11 library:
");
   printf("    PKCS #11 version: %d.%d
",
       (int)info.cryptokiVersion.major, (int)info.cryptokiVersion.minor);
   printf("    manufacturer ID: %.32s
", info.manufacturerID);
   printf("    flags: 0x%08lx
", info.flags);
   printf("    library description: %.32s
", info.libraryDescription);
   printf("    library version: %d.%d
",
       (int)info.libraryVersion.major, (int)info.libraryVersion.minor);
   printf("
");

.. _See_also:

See also
~~~~~~~~

-  `NSC_GetInfo </en-US/NSC_GetInfo>`__
