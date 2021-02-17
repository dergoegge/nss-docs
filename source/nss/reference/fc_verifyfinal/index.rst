==============
FC_VerifyFinal
==============
.. _Name:

Name
~~~~

FC_VerifyFinal - finish a multi-part verify operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_VerifyFinal(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pSignature,
     CK_ULONG usSignatureLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pSignature``
   [in] pointer to the buffer which will
   receive the digest or NULL.
``usSignatureLen``
   [in] length of the signature in bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_VerifyFinal`` finishes a multi-part signature verification
operation.

A user must log into the token (to assume the NSS User role) before
calling ``FC_VerifyFinal``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_VerifyUpdate </en-US/FC_VerifyUpdate>`__,
   `NSC_VerifyFinal </en-US/NSC_VerifyFinal>`__
