.. _Mozilla_Projects_NSS_Reference_FC_SignUpdate:

=============
FC_SignUpdate
=============
.. _Name:

Name
~~~~

FC_SignUpdate - process the next block of a multi-part signing
operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SignUpdate(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pPart,
     CK_ULONG usPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pPart``
   [in] pointer to the next block of the data
   to be signed.
``usPartLen``
   [in] length of data block in bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_SignUpdate`` starts or continues a multi-part signature operation.
One or more blocks may be part of the signature. The signature for the
entire message is returned by a call to
`FC_SignFinal <https://developer.mozilla.org/en-US/FC_SignFinal>`__.

A user must log into the token (to assume the NSS User role) before
calling ``FC_SignUpdate``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_SignInit <https://developer.mozilla.org/en-US/FC_SignInit>`__,
   `FC_SignFinal <https://developer.mozilla.org/en-US/FC_SignFinal>`__,
   `NSC_SignUpdate <https://developer.mozilla.org/en-US/NSC_SignUpdate>`__