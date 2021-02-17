=========
FC_Verify
=========
.. _Name:

Name
~~~~

FC_Verify - sign a block of data.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_Verify(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pData,
     CK_ULONG usDataLen,
     CK_BYTE_PTR pSignature,
     CK_ULONG usSignatureLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pData``
   [in] pointer to data block.
``usDataLen``
   [in] length of the data in bytes.
``pSignature``
   [in] pointer to the signature.
``usSignatureLen``
   [in] length of the signature in bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_Verify`` verifies a signature in a single-part operation, where the
signature is an appendix to the data.

A user must log into the token (to assume the NSS User role) before
calling ``FC_Verify``.

.. _Return_value:

Return value
~~~~~~~~~~~~

``CKR_OK`` is returned on success. ``CKR_SIGNATURE_INVALID`` is returned
for signature mismatch.

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_VerifyInit </en-US/FC_VerifyInit>`__,
   `NSC_Verify </en-US/NSC_Verify>`__