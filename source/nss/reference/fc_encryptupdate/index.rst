.. _Mozilla_Projects_NSS_Reference_FC_EncryptUpdate:

================
FC_EncryptUpdate
================
.. _Name:

Name
~~~~

FC_EncryptUpdate - encrypt a block of a multi-part encryption operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_EncryptUpdate(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pPart,
     CK_ULONG usPartLen,
     CK_BYTE_PTR pEncryptedPart,
     CK_ULONG_PTR pusEncryptedPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pPart``
   [in] pointer to the next block of data to be encrypted.
``usPartLen``
   [in] length of data block in bytes.
``pEncryptedPart``
   [out] pointer to location where encrypted block is to be stored.
``pusEncryptedPartaLen``
   [out] pointer the location where the number of bytes of encrypted data
   is to be stored.

.. _Description:

Description
~~~~~~~~~~~

``FC_EncryptUpdate`` encrypts a block of data according to the attributes of the previous call to
``FC_EncryptInit``. The block may be part of a multi-part encryption operation.

A user must log into the token (to assume the NSS User role) before calling ``FC_EncryptUpdate``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_EncryptInit </en-US/FC_EncryptInit>`__, `NSC_EncryptUpdate </en-US/NSC_EncryptUpdate>`__