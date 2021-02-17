====================
FC_SetOperationState
====================
.. _Name:

Name
~~~~

FC_SetOperationState - restore the cryptographic operation state of a
session.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SetOperationState(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pOperationState,
     CK_ULONG ulOperationStateLen,
     CK_OBJECT_HANDLE hEncryptionKey,
     CK_OBJECT_HANDLE hAuthenticationKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] handle of the open session.
``pOperationState``
   [in] pointer to a byte array containing the
   operation state.
``ulOperationStateLen``
   [in] contains the total length (in bytes)
   of the operation state.
``hEncryptionKey``
   [in] handle of the encryption or decryption
   key to be used in a stored session or zero if no key is needed.
``hAuthenticationKey``
   [in] handle of the authentication key to be
   used in the stored session or zero if none is needed.

.. _Description:

Description
~~~~~~~~~~~

``FC_SetOperationState`` restores the cryptographic operations state of
a session from an array of bytes obtained with ``FC_GetOperationState``.
This function only works for digest operations for now. Therefore, a
user may call ``FC_SetOperationState`` without logging into the token
(to assume the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_GetOperationState </en-US/FC_GetOperationState>`__,
   `NSC_SetOperationState </en-US/NSC_SetOperationState>`__