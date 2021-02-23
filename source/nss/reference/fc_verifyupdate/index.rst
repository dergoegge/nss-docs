.. _Mozilla_Projects_NSS_Reference_FC_VerifyUpdate:

===============
FC_VerifyUpdate
===============
.. _Name:

Name
~~~~

FC_VerifyUpdate - process the next block of a multi-part verify
operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_VerifyUpdate(
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
   to be verified.
``usPartLen``
   [in] length of data block in bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_VerifyUpdate`` starts or continues a multi-part signature
verification operation where the signature is an appendix to the data.
One or more blocks may be part of the signature. The result for the
entire message is returned by a call to
`FC_VerifyFinal <https://developer.mozilla.org/en-US/FC_VerifyFinal>`__.

A user must log into the token (to assume the NSS User role) before
calling ``FC_VerifyUpdate``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_VerifyFinal <https://developer.mozilla.org/en-US/FC_VerifyFinal>`__,
   `NSC_VerifyUpdate <https://developer.mozilla.org/en-US/NSC_VerifyUpdate>`__