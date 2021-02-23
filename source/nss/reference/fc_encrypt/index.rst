.. _Mozilla_Projects_NSS_Reference_FC_Encrypt:

==========
FC_Encrypt
==========
.. _Name:

Name
~~~~

FC_Encrypt - Encrypt a block of data.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_Encrypt(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pData,
     CK_ULONG usDataLen,
     CK_BYTE_PTR pEncryptedData,
     CK_ULONG_PTR pusEncryptedDataLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pData``
   [in] pointer to the data buffer
``usDataLen``
   [in] length of the data buffer in bytes.
``pEncryptedData``
   [out] pointer to location where encrypted
   data is to be stored.
``pusEncryptedDataLen``
   [in/out] number of bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_Encrypt`` encrypts a block of data according to the attributes of
the previous call to ``FC_EncryptInit``.

A user must log into the token (to assume the NSS User role) before
calling ``FC_Encrypt``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_EncryptInit <https://developer.mozilla.org/en-US/FC_EncryptInit>`__,
   `NSC_Encrypt <https://developer.mozilla.org/en-US/NSC_Encrypt>`__