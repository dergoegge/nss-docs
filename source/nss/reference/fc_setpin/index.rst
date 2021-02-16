--- title: FC_SetPIN slug: Mozilla/Projects/NSS/Reference/FC_SetPIN
tags: - NSS ---

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
   {{ mediawiki.external('Input') }} the session's handle
``pOldPin``
   {{ mediawiki.external('Input') }} points to the old PIN.
``ulOldLen``
   {{ mediawiki.external('Input') }} the length in bytes of the old PIN.
``pNewPin``
   {{ mediawiki.external('Input') }} points to the new PIN.
``ulNewLen``
   {{ mediawiki.external('Input') }} the length in bytes of the new PIN.

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

-  `NSC_SetPIN </en-US/NSC_SetPIN>`__
