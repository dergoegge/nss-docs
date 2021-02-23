.. _Mozilla_Projects_NSS_Reference_FC_SignFinal:

============
FC_SignFinal
============
.. _Name:

Name
~~~~

FC_SignFinal - finish a multi-part signing operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SignFinal(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pSignature,
     CK_ULONG_PTR pusSignatureLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pSignature``
   [out] pointer to the buffer which will
   receive the digest or NULL.
``pusSignatureLen``
   [in, out] pointer to location containing
   the maximum buffer size.

.. _Description:

Description
~~~~~~~~~~~

``FC_SignFinal`` finishes a multi-part signing operation by returning
the complete signature and clearing the operation context. If
``pSignature`` is NULL the length of the signature is returned and
``FC_SignFinal`` may be called again with ``pSignature`` set to retrieve
the signature.

A user must log into the token (to assume the NSS User role) before
calling ``FC_SignFinal``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_SignUpdate <https://developer.mozilla.org/en-US/FC_SignUpdate>`__,
   `NSC_SignFinal <https://developer.mozilla.org/en-US/NSC_SignFinal>`__