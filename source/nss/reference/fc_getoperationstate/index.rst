.. _Mozilla_Projects_NSS_Reference_FC_GetOperationState:

====================
FC_GetOperationState
====================
.. _Name:

Name
~~~~

FC_GetOperationState - get the cryptographic operation state of a session.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetOperationState(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR  pOperationState,
     CK_ULONG_PTR pulOperationStateLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] handle of the open session.
``pOperationState``
   [out] pointer to a byte array of a length sufficient for containing the
   operation state or NULL.
``pulOperationStateLen``
   [out] pointer to `CK_ULONG </en-US/CK_ULONG>`__ which receives the
   total length (in bytes) of the operation state.

.. _Description:

Description
~~~~~~~~~~~

``FC_GetOperationState`` saves the state of the cryptographic operation in a session. This function
only works for digest operations for now. Therefore, a user may call ``FC_GetOperationState``
without logging into the token (to assume the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_SetOperationState </en-US/FC_SetOperationState>`__,
   `NSC_GetOperationState </en-US/NSC_GetOperationState>`__