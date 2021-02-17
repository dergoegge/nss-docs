.. _Mozilla_Projects_NSS_Reference_FC_SignEncryptUpdate:

====================
FC_SignEncryptUpdate
====================
.. _Name:

Name
~~~~

FC_SignEncryptUpdate - continue a multi-part signing and encryption
operation

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SignEncryptUpdate(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pPart,
     CK_ULONG ulPartLen,
     CK_BYTE_PTR pEncryptedPart,
     CK_ULONG_PTR pulEncryptedPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pPart``
   [in] pointer to the data part.
``ulPartLen``
   [in] length of data in bytes.
``pEncryptedPart``
   [in] pointer to the location which receives
   the signed and encrypted data part or NULL.
``pulEncryptedPartLen``
   [in] pointer to the length of the encrypted
   part buffer.

.. _Description:

Description
~~~~~~~~~~~

``FC_SignEncryptUpdate`` continues a multi-part signature and encryption
operation. After calling both ``FC_SignInit`` and ``FC_EncryptInit`` to
set up the operations this function may be called multiple times. The
operation is finished by calls to ``FC_SignFinal`` and
``FC_EncryptFinal``.

A user must log into the token (to assume the NSS User role) before
calling ``FC_SignEncryptUpdate``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_SignEncryptUpdate </en-US/NSC_SignEncryptUpdate>`__