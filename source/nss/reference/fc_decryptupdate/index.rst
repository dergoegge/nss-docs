.. _Mozilla_Projects_NSS_Reference_FC_DecryptUpdate:

================
FC_DecryptUpdate
================
.. _Name:

Name
~~~~

FC_DecryptUpdate - decrypt a block of a multi-part encryption operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DecryptUpdate(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pEncryptedPart,
     CK_ULONG usEncryptedPartLen,
     CK_BYTE_PTR pPart,
     CK_ULONG_PTR pusPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pEncryptedPart``
   [in] pointer to the next block of data to
   be decrypted.
``usEncryptedPartLen``
   [in] length of data block in bytes.
``pPart``
   [out] pointer to location where recovered
   block is to be stored.
``pusPartLen``
   [in,out] pointer the location where the
   number of bytes of recovered data is to be stored.

.. _Description:

Description
~~~~~~~~~~~

``FC_DecryptUpdate`` decrypts a block of data according to the
attributes of the previous call to ``FC_DecryptInit``. The block may be
part of a multi-part decryption operation.

A user must log into the token (to assume the NSS User role) before
calling ``FC_DecryptUpdate``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_DecryptInit <https://developer.mozilla.org/en-US/FC_DecryptInit>`__,
   `NSC_DecryptUpdate <https://developer.mozilla.org/en-US/NSC_DecryptUpdate>`__