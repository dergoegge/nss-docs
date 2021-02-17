.. _Mozilla_Projects_NSS_Reference_FC_VerifyInit:

=============
FC_VerifyInit
=============
.. _Name:

Name
~~~~

FC_VerifyInit - initialize a verification operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_VerifyInit(
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
   [in] mechanism to be used for the verification operation.
``hKey``
   [in] handle of the key to be used.

.. _Description:

Description
~~~~~~~~~~~

``FC_VerifyInit`` initializes a verification operation where the signature is an appendix to the
data.

A user must log into the token (to assume the NSS User role) before calling ``FC_VerifyInit``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_VerifyInit </en-US/NSC_VerifyInit>`__