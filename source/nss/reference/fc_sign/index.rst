.. _Mozilla_Projects_NSS_Reference_FC_Sign:

=======
FC_Sign
=======
.. _Name:

Name
~~~~

FC_Sign - sign a block of data.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_Sign(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pData,
     CK_ULONG usDataLen,
     CK_BYTE_PTR pSignature,
     CK_ULONG_PTR pusSignatureLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pData``
   [in] pointer to data block.
``usDataLen``
   [in] length of the data in bytes.
``pSignature``
   [out] pointer to location where recovered
   data is to be stored.
``pusSignatureLen``
   [in, out] pointer to the maximum size of
   the output buffer, replaced by the length of the signature if the
   operation is successful.

.. _Description:

Description
~~~~~~~~~~~

``FC_Sign`` signs a message in a single operation according to the
attributes of the previous call to ``FC_SignInit``.

A user must log into the token (to assume the NSS User role) before
calling ``FC_Sign``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_SignInit </en-US/FC_SignInit>`__, `NSC_Sign </en-US/NSC_Sign>`__