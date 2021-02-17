==========
FC_Decrypt
==========
.. _Name:

Name
~~~~

FC_Decrypt - Decrypt a block of data.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_Decrypt(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pEncryptedData,
     CK_ULONG usEncryptedDataLen,
     CK_BYTE_PTR pData,
     CK_ULONG_PTR pusDataLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pEncryptedData``
   [in] pointer to encrypted data block.
``usEncryptedDataLen``
   [in] length of the data in bytes.
``pData``
   [out] pointer to location where recovered
   data is to be stored.
``pusDataLen``
   [in,out] pointer to location where the
   length of recovered data is to be stored.

.. _Description:

Description
~~~~~~~~~~~

``FC_Decrypt`` decrypts a block of data according to the attributes of
the previous call to ``FC_DecryptInit``.

A user must log into the token (to assume the NSS User role) before
calling ``FC_Decrypt``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_DecryptInit </en-US/FC_DecryptInit>`__,
   `NSC_Decrypt </en-US/NSC_Decrypt>`__
