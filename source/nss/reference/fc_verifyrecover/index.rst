================
FC_VerifyRecover
================
.. _Name:

Name
~~~~

FC_VerifyRecover - Verify data in a single recoverable operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_VerifyRecover(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pSignature,
     CK_ULONG usSignatureLen,
     CK_BYTE_PTR pData,
     CK_ULONG_PTR pusDataLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pSignature``
   [in] mechanism to be used for the signing
   operation.
``usSignatureLen``
   [in] handle of the key to be usedn.
``pData``
   [out] pointer to the buffer or NULL.
``pusDataLen``
   [in, out] pointer to the size of the output
   buffer, replaced by the length of the signature if the operation is
   successful.

.. _Description:

Description
~~~~~~~~~~~

``FC_VerifyRecover`` verifies data in a single operation where the
(digest) data can be recovered from the signature. If ``pSignature`` is
NULL only the length of the signature is returned in
``*pusSignatureLen``.

A user must log into the token (to assume the NSS User role) before
calling ``FC_VerifyRecover``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_VerifyRecover </en-US/NSC_VerifyRecover>`__
