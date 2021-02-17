===============
FC_EncryptFinal
===============
.. _Name:

Name
~~~~

FC_EncryptFinal - finish a multi-part encryption operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_EncryptFinal(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pLastEncryptedPart,
     CK_ULONG_PTR pusLastEncryptedPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pLastEncryptedPart``
   [out] pointer to the location that receives
   the last encrypted data part, if any
``pusLastEncryptedPartLen``
   [in,out] pointer to location where the
   number of bytes of the last encrypted data part is to be stored.

.. _Description:

Description
~~~~~~~~~~~

``FC_EncryptFinal`` returns the last block of data of a multi-part
encryption operation.

A user must log into the token (to assume the NSS User role) before
calling ``FC_EncryptFinal``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_EncryptInit </en-US/FC_EncryptInit>`__,
   `NSC_EncryptFinal </en-US/NSC_EncryptFinal>`__