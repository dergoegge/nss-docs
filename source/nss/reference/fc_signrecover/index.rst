.. _Mozilla_Projects_NSS_Reference_FC_SignRecover:

==============
FC_SignRecover
==============
.. _Name:

Name
~~~~

FC_SignRecover - Sign data in a single recoverable operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SignRecover(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pData,
     CK_ULONG usDataLen,
     CK_BYTE_PTR pSignature,
     CK_ULONG_PTR pusSignatureLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pData``
   [in] mechanism to be used for the signing
   operation.
``usDataLen``
   [in] handle of the key to be usedn.
``pSignature``
   [out] pointer to the buffer or NULL.
``pusSignatureLen``
   [in, out] pointer to the size of the output
   buffer, replaced by the length of the signature if the operation is
   successful.

.. _Description:

Description
~~~~~~~~~~~

``FC_SignRecover`` signs data in a single operation where the (digest)
data can be recovered from the signature. If ``pSignature`` is NULL only
the length of the signature is returned in ``*pusSignatureLen``.

A user must log into the token (to assume the NSS User role) before
calling ``FC_SignRecover``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_SignRecover </en-US/NSC_SignRecover>`__