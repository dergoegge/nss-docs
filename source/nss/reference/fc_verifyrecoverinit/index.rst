====================
FC_VerifyRecoverInit
====================
.. _Name:

Name
~~~~

FC_VerifyRecoverInit - initialize a verification operation where data is
recoverable.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_VerifyRecoverInit(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism,
     CK_OBJECT_HANDLE hKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pMechanism``
   [in] mechanism to be used for verification.
``hKey``
   [in] handle of the key to be used.

.. _Description:

Description
~~~~~~~~~~~

``FC_VerifyRecoverInit`` initializes a signature verification operation
where the (digest) data can be recovered from the signature.

A user must log into the token (to assume the NSS User role) before
calling ``FC_VerifyRecoverInit``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_VerifyRecoverInit </en-US/NSC_VerifyRecoverInit>`__
