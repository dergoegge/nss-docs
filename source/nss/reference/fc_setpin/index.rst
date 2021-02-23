.. _Mozilla_Projects_NSS_Reference_FC_SetPIN:

=========
FC_SetPIN
=========
.. _Name:

Name
~~~~

FC_SetPIN - Modify the user's PIN.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SetPIN(
     CK_SESSION_HANDLE hSession,
     CK_CHAR_PTR pOldPin,
     CK_ULONG ulOldLen,
     CK_CHAR_PTR pNewPin,
     CK_ULONG ulNewLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_SetPIN`` takes five parameters:

``hSession``
   [Input] the session's handle
``pOldPin``
   [Input] points to the old PIN.
``ulOldLen``
   [Input] the length in bytes of the old PIN.
``pNewPin``
   [Input] points to the new PIN.
``ulNewLen``
   [Input] the length in bytes of the new PIN.

.. _Description:

Description
~~~~~~~~~~~

``FC_SetPIN`` modifies the PIN of the user. The user must log into the
token (to assume the NSS User role) before calling ``FC_SetPIN``.

.. _Return_value:

Return value
~~~~~~~~~~~~

``CKR_OK``

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_SetPIN <https://developer.mozilla.org/en-US/NSC_SetPIN>`__